$(function () {
    console.log('players.js is loaded...')
    listenForClick()
});

function listenForClick() {
    $('button#get-players').on('click', function(event){
        event.preventDefault()
        getPlayers()
    })
}

function getPlayers() {
    $.ajax({
        url: 'http://localhost:3000/players',
        method: 'get',
        dataType: 'json'
    }).done(function (data) {

        console.log("the data is: ", data)
        debugger
        let myPlayer = new Player(data[0])
        let myPlayerHTML = myPlayer.postHTML()
        document.getElementById('players-index').innerHTML += myPlayerHTML
    })
}

class Player {
    constructor(obj) {
        this.id = obj.id
        this.name = obj.name
        this.top_score = obj.top_score
        this.characteristics = obj.characteristics
    }
}

Player.prototype.postHTML = function () {
    return (`
    <div>
        <h3>${this.name}</h3>
        <h3>${this.characteristics}</h3>
    </div>
    `)
}