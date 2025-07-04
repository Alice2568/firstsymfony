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
        $this->createCategory('Antipasti','/img/antipasti/4779.jpg', $manager);
        $this->createCategory('Pizza','/img/pizza/vege.jpg', $manager);
        $this->createCategory('Pasta','/img/pasta/main.jpg', $manager);
        $this->createCategory('Risotto','/img/risotto/22765.jpg', $manager);
        $this->createCategory('Dessert','/img/dessert/29211.jpg', $manager);
        $this->createCategory('Boisson','/img/boisson/2909.jpg', $manager);


        $manager->flush();
    }
public function createCategory(string $nom, string $image, ObjectManager $manager)
{
            $category = new Category();
            $category->setNom($nom);
            $category->setImage($image);
            $category->setSlug(strtolower($this->slugger->slug($nom)));

            $manager->persist($category);

            //ajouter une référence utilisable dans d'autres fixtures
            $this->addReference('category_'.strtolower($nom), $category);
}
}
