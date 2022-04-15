<?php

namespace App\Controller;

use App\Entity\Post;
use App\Form\PostType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PostController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function home(): Response
    {
        return $this->render('post/home.html.twig', [
            'controller_name' => 'PostController',
        ]);
    }

    #[Route('/post/{id}', name: 'post_view')] //was app_post
    public function post($id): Response
    {   
        return $this->render('post/view.html.twig', [
            'post' => [
            'title' => 'Le titre de l\'article',
            'content' => 'D\'où vient-il?
            L\'extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).'
            ],
        ]);
    }
    
        #[Route('/post/add', name:'post_add')]
        public function addPost(Request $request): Response
        {
            $post = new Post();
            $form = $this->createForm(PostType::class, $post);

            return $this->render('post/add.html.twig', [
                'form' => $form->createView(),
            ]);
        }
}
