<?php

namespace App\Controller\Admin2;

use App\Entity\Category;
use App\Form\Category1Type;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/admin2/category/conrtoller')]
class CategoryConrtollerController extends AbstractController
{
    #[Route('/', name: 'app_admin2_category_conrtoller_index', methods: ['GET'])]
    public function index(CategoryRepository $categoryRepository): Response
    {
        return $this->render('admin2/category_conrtoller/index.html.twig', [
            'categories' => $categoryRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_admin2_category_conrtoller_new', methods: ['GET', 'POST'])]
    public function new(Request $request, CategoryRepository $categoryRepository): Response
    {
        $category = new Category();
        $form = $this->createForm(Category1Type::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $categoryRepository->add($category);
            return $this->redirectToRoute('app_admin2_category_conrtoller_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('admin2/category_conrtoller/new.html.twig', [
            'category' => $category,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_admin2_category_conrtoller_show', methods: ['GET'])]
    public function show(Category $category): Response
    {
        return $this->render('admin2/category_conrtoller/show.html.twig', [
            'category' => $category,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_admin2_category_conrtoller_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Category $category, CategoryRepository $categoryRepository): Response
    {
        $form = $this->createForm(Category1Type::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $categoryRepository->add($category);
            return $this->redirectToRoute('app_admin2_category_conrtoller_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('admin2/category_conrtoller/edit.html.twig', [
            'category' => $category,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_admin2_category_conrtoller_delete', methods: ['POST'])]
    public function delete(Request $request, Category $category, CategoryRepository $categoryRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$category->getId(), $request->request->get('_token'))) {
            $categoryRepository->remove($category);
        }

        return $this->redirectToRoute('app_admin2_category_conrtoller_index', [], Response::HTTP_SEE_OTHER);
    }
}
