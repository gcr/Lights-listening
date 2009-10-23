\version "2.12.1"

\include "03-river/river.ly"

\book {
  \bookpart {
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
}
