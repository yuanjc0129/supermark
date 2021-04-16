import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '',
    redirect: '/home'
  },
  {
    path: '/home',
    component: () => import('../views/home/Home')
  },
  {
    path: '/category',
    component: () => import('../views/category/Category')
  },
  {
    path: '/profile',
    component: () => import('../views/profile/Profile')
  },
  {
    path: '/shopcart',
    component: () => import('../views/shopcart/Shopcart')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
