# General Store

An online store where product description/images can be added and edited by users who are admins or owner

## DEMO
https://general-store.fly.dev/shop - work in progress

## Features (implemented/working)
- Presigned-URL uploads
- Google OAuth 2.0
- Admin panel where you can add & delete products

## Technologies
- Frontend: React, TailwindCSS, Redux, RTK Query, React-Hook-Form, Zod
- Backend: Express, Cloudinary, Zod, passport

## TODO
- ~~Host on fly.io~~
- Allow editing
- Add multi image support in frontend (backend mostly done)
- Add cart & product detail pages
- ~~Add user system (right now anyone can add/edit products). Can do passport-JWT but want to look into google sign-in~~
- Let users add ratings to products (probably only signed-in users). For this, make a separate DB table where each document has 3 fields: userId, productId, rating
- ~~Make it easy for any user to become admin to test out the store~~


## Installation (?)
Missing .env file on the backend, which contains keys for Cloudinary (image storage), and mongoDB (database). The .env file has the following keys:
```
DB_URL
CLOUDINARY_SECRET
CLOUDINARY_NAME
CLOUDINARY_KEY
GOOGLE_OAUTH_CLIENT_ID
GOOGLE_OAUTH_CLIENT_SECRET
SESSION_SECRET
```
```bash
git clone git@github.com:omero2582/general-store.git
git submodule init
git submodule update
```
### Backend:
```bash
npm run dev
```
### Frontend:
```bash
npm run dev
```