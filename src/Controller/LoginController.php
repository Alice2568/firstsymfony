<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use app\Entity\User;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class LoginController extends AbstractController
{
    #[Route('/login', name: 'app_login')]
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'error'         => $error,
        ]);
    }

    #[Route('/logout', name: 'app_logout')]
    public function logout(): void
    {
        // This method can be blank - it will be intercepted by the logout key on your firewall.
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }

     #[Route('/verifuser', name: 'app_verifiedUser')]
    public function verif(): Response
    {
        $user = $this->getUser();

        return $this->render('security/verified.html.twig', [
           'user'=> $user
        ]);
    }
      #[Route('/errorverif', name: 'app_errorverif')]
    public function error(): Response
    {
        $user = $this->getUser();

        return $this->render('security/errorverif.html.twig', [
           'user'=> $user
        ]);
    }
}
