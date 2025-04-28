// TODO: get the form and attach a handler function called
// "createPost" to the submit event

// TODO: implement the function "createPost"
// 1) Don't let the from submit in the default way

// 2) Gather up the post fields from the form

// 3) Add the current date to the post fields as posted_date

// 4) Create the necessary request headers

// 5) Make a POST request to "/api/posts" to create a new post
const postForm = document.getElementById("post-form");
postForm.addEventListener("submit", addPost);


async function addPost(event){
    event.preventDefault();

    const author = document.getElementById("author").value;
    const title = document.getElementById("title").value;
    const body = document.getElementById("body").value;
    const  datePosted = document.getElementById("posted_date").value;


    const postData = {
       author: author,
       title: title,
       body: body,

    };

    if (datePosted){
        postData.posted_date = datePosted;
    }


    const headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
    };

    try {
        const response = await fetch("/api/posts", {
            method: "POST",
            headers: headers,
            body: JSON.stringify(postData),
        });


        if (!response.ok){
            throw new Error(`${response.status}`);

        }
         window.location.href = "/posts.html";

    } catch(error){
        console.error("Error creating a post:", error)
    }

}
