import { createBrowserRouter } from "react-router-dom";
import Main from '../layout/layoutMain';
import Home from '../pages/Home';
import Post from "../components/Post";
import CreatePost from "../pages/Createpost";
import Rules from "../pages/Rule";
import LoginPage from "../pages/loginRegister";
import NotificationPage from "../pages/NotificationPage";
import ParticipationHistory from '../pages/ParticipationHistory';2
import EventDetailPage from '../pages/DetailPage';
import Profile from '../pages/Profile';
import ProfileEdit from '../pages/ProfileEdit';

const router = createBrowserRouter([
  {
    path: "/",
    element: <Main />,
    children: [
      {
        path: "/",
        element: <Home />
      },
      {
        path: "rules",
        element: <Rules />
      },
      {
        path: "login",
        element: <LoginPage />
      },
      {
        path: "post",
        element: <Post />
      },
      {
        path: "create-post",
        element: <CreatePost />
      },
      {
        path: "notifications",
        element: <NotificationPage />
      },
      {
        path: "participation-history",
        element: <ParticipationHistory />
      },
      {
        path: "events/:id", // Add this route for event details
        element: <EventDetailPage />
      },
      {
        path: "profile",
        element: <Profile />
      },
      {
        path: "profile/edit",
        element: <ProfileEdit />
      },
      // {
      //   path: "participation-history",
      //   element: <ParticipationHistory />
      // }
    ]
  }
]);

export default router;
