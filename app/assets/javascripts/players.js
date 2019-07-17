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
        let myPlayer = new Player(data[0])
        let myPlayerHTML = myPlayer.postHTML()
        document.getElementById('get-players').innerHTML = myPlayerHTML
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

    let playerCharacteristics = this.characteristics.map(char => {
        return(`
        <p><{char.characteristic_name}/p>
        `)
    }).join('')

    return (`
    <div>
        <h3>${this.name}</h3>
        <p>${playerCharacteristics}</p>
    </div>
    `)
}