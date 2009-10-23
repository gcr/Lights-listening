\version "2.12.1"

\include "03-river/river.ly"
\include "13-pretend/pretend.ly"

#(set-default-paper-size "letter")

\book {
  \markuplines \table-of-contents
  \pageBreak
  %{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    ___ _____    ____  _                
   / _ \___ /   |  _ \(_)_   _____ _ __ 
  | | | ||_ \   | |_) | \ \ / / _ \ '__|
  | |_| |__) |  |  _ <| |\ V /  __/ |   
   \___/____/   |_| \_\_| \_/ \___|_|   
  %}
  \bookpart {
    \tocItem \markup "03 - River"
    \header {
      title = "River"
    }
    \score { <<
      \new Staff <<
        \time 8/8
        \key c \major
        \new Voice = "RiverLights"  {
          \RiverLyricNotes
        }
        \new Lyrics \lyricsto "RiverLights" {
          \autoBeamOff
          \RiverText
        }
        \new PianoStaff \with { connectArpeggios = ##t } <<
          \new Staff {
            \key a \major
            \clef treble
            \RiverPianoRH
          }
          \new Staff {
            \key a \major
            \clef bass
            \RiverPianoLH
          }
        >>
      >>
    >> }
  }

  %{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
   _ _____    ____           _                 _ 
  / |___ /   |  _ \ _ __ ___| |_ ___ _ __   __| |
  | | |_ \   | |_) | '__/ _ \ __/ _ \ '_ \ / _` |
  | |___) |  |  __/| | |  __/ ||  __/ | | | (_| |
  |_|____/   |_|   |_|  \___|\__\___|_| |_|\__,_|
  %}
                                              
  \bookpart {
    \tocItem \markup "13 - Pretend (Reprise)"
    \header {
      title = "Pretend"
      subtitle = "(Reprise)"
    }
    \score { <<
      \new Staff = "lyrics" <<
        \time 6/8
        \tempo 4. = 60
        \key a \major
        \new Voice = "lights"  {
          \PretendLyricsNotes
        }
        \new Lyrics \lyricsto "lights" {
          \autoBeamOff
          \PretendText
        }
        \new PianoStaff  = "piano" \with { connectArpeggios = ##t } <<
          \new Staff = "upper" {
            \key a \major
            \clef treble
            \PretendPianoRH
          }
          \new Staff = "lower" {
            \key a \major
            \clef bass
            \PretendPianoLH
          }
        >>
      >>
    >> }
  }
}
