 
`Desarrollo Mobile` > `Swift Intermedio 2`

	
## Titulo del Ejemplo 

### OBJETIVO 

- Lo que esperamos que el alumno aprenda 

#### REQUISITOS 

1. Lo necesario para desarrollar el ejemplo o el Reto 

#### DESARROLLO

De acuerdo al sig. protocolo, definir una estructura que lo conforme y además crear un objeto que implemente cada una de las funciones del protocolo.

```
protocol Actions {
  func songInfo() -> String
  func play()
  func stop()
  func nextSong()
  func previousSong()
  func playList(_ list: String...)
  static func loadSong()
}
```

<details>
	<summary>Solución</summary>
	<p> Creamos una estructura que conforme al protocolo Actions, Xcode automáticamente solicitará implementar los métodos previamente definidos.</p>

```
struct Media: Actions {
  func songInfo() -> String {
    return "song name"
  }
  
  func play() {
    print(" play song")
  }
  
  func stop() {
    print(" stop song")
  }
  
  func nextSong() {
    print(" next song")
  }
  
  func previousSong() {
    print(" prev song")
  }
  
  func playList(_ list: String...) {
    for song in list {
      print(" now playing \(song)")
    }
  }
  
  static func loadSong() {
    print(#function)
  }
}
```

<p>En el caso de una función con varadic parameters, utilizar un For-Loop.</p>

```
  func playList(_ list: String...) {
    for song in list {
      print(" now playing \(song)")
    }
  }
```
</details> 

