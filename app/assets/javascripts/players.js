$(() => {
    bindClickHandlers()
});

const bindClickHandlers = () => {
    $('.all_players').on('click', (e) => {
        e.preventDefault()
        // this is being appended to the URL so it updates for users
        history.pushState(null, null, "players")
        getPlayers()
    })

    $(document).on('click', ".show_link", function(e) {
        e.preventDefault()
        $('#app-container').html('')
        let id = ($(this).attr('data-id'))
        fetch(`/players/${id}.json`)
            .then(res => res.json())
            .then(player => {
                let newPlayer = new Player(player)
                let playerHtml = newPlayer.formatShow()
                  $('#app-container').append(playerHtml)
            })
    })

    // $(document).on('click', 'next-post', function(e) {
    //     let id = ($(this).attr('data-id'))
    //     fetch(`'players/${id}/next'`)
        
    // })

    $('#new_player').on('submit', function(e) {
        e.preventDefault()
        const values = $(this).serialize()

        $.post('/signup', values).done(function(data) {
            $('#app-container').html('')

            const newPlayer = new Player(data)
            const newHtmlToAdd = newPlayer.formatShow()

            $('#app-container').html(newHtmlToAdd)
        })
    })

}

const getPlayers = () => {
    fetch(`/players.json`)
            .then(res => res.json())
            .then(players => {
                $('#app-container').html('')
                players.forEach(player => {
                  let newPlayer = new Player(player)
                  let playersHtml = newPlayer.formatIndex()
                  $('#app-container').append(playersHtml)
                })
            })
}


function Player(player) {
    this.id = player.id
    this.name = player.name
    this.image = player.image.url
    this.characteristics = player.characteristics.map(char => char.characteristic_name)
}

Player.prototype.formatIndex = function() {
    let playersHtml = `
        <a href="/players/${this.id}" data-id="${this.id}" class="show_link"> 
        <h2>${this.id}. ${this.name}</h2>
        <img src="${this.image}" alt="player_headshot" width="250" height="300">
        
    `
    return playersHtml
}

Player.prototype.formatShow = function() {
    let playerHtml = `
        <h3>${this.name}</h3> 
        <img src="${this.image}" alt="player_headshot" width="550" height="600">  
        <h4>Characteristics: </h4>
        <ul> ${this.characteristics.map(function (char) {
            return '<li>' + char + '</li>';
        }).join('')} </ul>
    
        </ul>
        <button class="next-post"> Next </button>
        `
        return playerHtml
    
}