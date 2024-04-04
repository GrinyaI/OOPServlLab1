<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Библиотека</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="static/index.css">
</head>
<body>
    <div class="app">
        <form class="library" action="textDisplay" method="post">
            <div class="library_title">БИБЛИОТЕКА</div>
            <div class="library_genre_selector">
                <label for="genre">Выберите жанр книги:</label>
                <select id="genre" class="selector" name="genre" onchange="showBooks()">
                    <option value="Fantastic" selected>Фантастика</option>
                    <option value="Poetry">Поэзия</option>
                    <option value="Prose">Проза</option>
                </select>
            </div>
            <div class="library_book_selector">
                <label for="bookSelector">Выберите произведение:</label>
                <select id="bookSelector" class="selector" name="bookSelector">
                </select>
            </div>
            <input class="submit_button" type="submit" value="Открыть">
        </form>
    </div>
</body>
<script>
    function showBooks() {
        const genre = document.getElementById("genre").value;
        const writerSelect = document.getElementById("bookSelector");
        writerSelect.innerHTML = "";

        if (genre === "Fantastic") {
            const fantasy = ["Жюль Верн - Вокруг света в восемьдесят дней", "Оруэлл Джордж - 1984", "Уэллс Герберт - Война миров"];
            const fantasy_eng = ["Jules Verne - Around the World in Eighty Days", "Orwell George - 1984", "Wells Herbert - War of the Worlds"]
            for(let i = 0; i < fantasy.length; i++) {
                const option = document.createElement("option");
                option.text = fantasy[i];
                option.value = fantasy_eng[i];
                writerSelect.add(option);
            }
        } else if (genre === "Poetry") {
            const poets = ["Владимир Высоцкий - Баллада о брошенном корабле", "Михаил Исаковский - Враги сожгли родную хату", "Сергей Михалков - Заяц во хмелю"];
            const poets_eng = ["Vladimir Vysotsky - Ballad of an abandoned ship", "Mikhail Isakovsky - Enemies burned down their home", "Sergey Mikhalkov - Hare in hops"]
            for(let i = 0; i < poets.length; i++) {
                const option = document.createElement("option");
                option.text = poets[i];
                option.value = poets_eng[i];
                writerSelect.add(option);
            }
        } else if (genre === "Prose") {
            const prosaist = ["Николай Гоголь - Мёртвые души", "Константин Симонов - Живые и мёртвые", "Василий Быков - Обелиск"];
            const prosaist_eng = ["Nikolai Gogol - Dead Souls", "Konstantin Simonov - The Living and the Dead", "Vasily Bykov - Obelisk"]
            for(let i = 0; i < prosaist.length; i++) {
                const option = document.createElement("option");
                option.text = prosaist[i];
                option.value = prosaist_eng[i];
                writerSelect.add(option);
            }
        }
    }
    window.addEventListener('DOMContentLoaded', function domLoadedHandler(e){
        showBooks();
    }, false);
</script>
</html>