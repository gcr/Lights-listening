\version "2.12.1"

\include "upupandaway.ly"

\header {
  title         = "Up Up And Away"
  composer      = "Composed by Lights"
  arranger      = "Arranged for piano by gcr"
  opus          = \markup { From \italic { The Listening } }
  %piece         = \markup { \italic { Dolce } }
  tagline       = \markup { \column { \center-align {
    \line { All music copyright ©2009 by Lights Poxleitner. No copyright
      infringement is intended. }
    \line { This document is completely unofficial and is in no way endorsed by
      Lights. }
    \line { Engraving by GNU Lilypond -- www.lilypond.org }
  } } }
} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score { <<
  \new Staff = "lyrics" <<
    \time 4/4
    \key aes \major
    \tempo 4 = 114
    \new Voice = "UpUpLights"  {
      \UpUpLyricsNotes
    }
    \new Lyrics \lyricsto "UpUpLights" {
      \UpUpText
    }
    \new PianoStaff  = "UpUpPiano" \with { connectArpeggios = ##t } <<
      \new Staff = "UpUpUpper" {
        \key aes \major
        \clef treble
        \UpUpPianoRH
      }
      \new Staff = "UpUpLower" {
        \key aes \major
        \clef bass
        \UpUpPianoLH
      }
    >>
  >>
>> }

