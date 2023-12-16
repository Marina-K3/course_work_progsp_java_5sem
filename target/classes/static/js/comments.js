// const mainComments = () => {
//     const form = document.getElementById('reviewForm');
//
//     form.addEventListener('submit', handleSubmit);
//
//     async function handleSubmit(event) {
//         event.preventDefault();
//         const review = form.querySelector('input[type="text"]').value;
//         const response = await fetch('/sendReview?review=' + review, {
//             method: 'GET',
//             headers: {
//                 'Content-Type': 'application/json'
//             },
//         });
//         if (response.ok) {
//             form.outerHTML = `
//                 <div class="flex items-center p-4 mb-4 text-sm text-green-800 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400" role="alert">
//                     <i class="bi bi-check-circle-fill text-white  p-3 "></i>
//                     <div class="text-white">
//                         <span class="font-medium">Спасибо!</span> Отзыв отправлен.
//                     </div>
//                 </div>
//             `;
//         }
//     }
// }
// document.onload = mainComments()
