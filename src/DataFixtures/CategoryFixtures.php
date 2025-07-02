<?php

namespace App\DataFixtures;

use App\Entity\Category;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\String\Slugger\SluggerInterface;

class CategoryFixtures extends Fixture
{
    public function __construct(private SluggerInterface $slugger){}

    public function load(ObjectManager $manager): void
    {
        $this->createCategory('Antipastis', $manager);
        $this->createCategory('Pizza', $manager);
        $this->createCategory('Pasta', $manager);
        $this->createCategory('Risotto', $manager);
        $this->createCategory('Dessert', $manager);
        $this->createCategory('Boisson', $manager);


        $manager->flush();
    }
public function createCategory(string $nom, ObjectManager $manager)
{
            $category = new Category();
            $category->setNom($nom);
            $category->setSlug(strtolower($this->slugger->slug($nom)));

            $manager->persist($category);

            //ajouter une référence utilisable dans d'autres fixtures
            $this->addReference('category_'.strtolower($nom), $category);
}
}
