<?php

namespace App\DataFixtures;

use App\Entity\Plat;
use App\Entity\Category;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\String\Slugger\SluggerInterface;
use Faker\Factory;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class PlatFixtures extends Fixture implements DependentFixtureInterface
{
    public function __construct(private SluggerInterface $slugger) {}

    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr_FR');

        $platsParCategorie = [
            'antipastis' => ['Bruschetta', 'Olives farcies'],
            'pizza'      => ['Margherita', 'Quatre Fromages', 'Reine'],
            'pasta'      => ['Spaghetti Carbonara', 'Penne Arrabiata'],
            'risotto'    => ['Risotto aux champignons'],
            'dessert'    => ['Tiramisu', 'Panna Cotta'],
            'boisson'    => ['Eau', 'Coca-Cola', 'Spritz']
        ];

        foreach ($platsParCategorie as $nom => $plats) {
            $category = $this->getReference('category_'.strtolower($nom), $category);

            foreach ($plats as $libelle) {
                $plat = new Plat();
                $plat->setLibelle($libelle);
                $plat->setSlug(strtolower($this->slugger->slug($libelle)));
                $plat->setDescription($faker->paragraph());
                $plat->setPrix($faker->randomFloat(2, 5, 20));
                $plat->setImage('images/placeholder.jpg'); // tu peux adapter
                $plat->setCategory($category);
                $plat->setIsValid(true);

                $manager->persist($plat);
            }
        }

        $manager->flush();
    }

    public function getDependencies(): array
    {
        return [
            CategoryFixtures::class,
        ];
    }
}
