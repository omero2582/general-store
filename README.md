# General Store

An online store where product description/images can be added and edited by users who are admins or owner

## Features
- Presigned-URL uploads
- Admin panel in '/admin' route

## Technologies
- Frontend: React, TailwindCSS, Redux, RTK Query, React-Hook-Form, Zod
- Backend: Express, Cloudinary, Zod

## TODO
- Host on fly.io
- Improve styles
- Add user system (right now anyone can add/edit products). Can do passport-JWT but want to look into google sign-in
- Let users add ratings to products (probably only signed-in users). For this, make a separate DB table where each document has 3 fields: userId, productId, rating
- Make it easy for any user to become admin to test out the store


## Installation (?)
Missing .env file on the backend, which contains keys for Cloudinary (image storage), and mongoDB (database). The .env file has the following keys:
```
DB_URL
CLOUDINARY_SECRET
CLOUDINARY_NAME
CLOUDINARY_KEY
```
```bash
git clone git@github.com:omero2582/general-store.git
git submodule init
git submodule update
```
### Backend:
```bash
npm start
```
### Frontend:
```bash
npm run dev
```