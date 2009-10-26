\version "2.12.1"

\include "pretend.ly"

\header {
  title         = "Pretend"
  subtitle      = "(Reprise)"
  composer      = "Lights"
  tagline       = \markup { 
    All music copyright ©2009 by Lights Poxleitner.
    Engraving by GNU Lilypond -- www.lilypond.org 
  }
  %arranger      = "gcr"
  opus          = "The Listening"
  %instrument    = "Piano"
  %meter         = \markup { \italic { Comfortable and honest } }
  % the below should actually be the meter, but I don't like how that's set on
  % the page and am too lazy to override the defaults. Ha.
  piece         = \markup { \italic { Comfortable and honest } }
}
#(set-default-paper-size "letter")


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score { <<
  % if I add chord names, I'll put them here.
% \new ChordNames = "chords" \with {  } {
%   \harmonies
% }
  \new Staff = "lyrics" <<
    % uncomment below to add bar numbers at every measure.
    %\override Score.BarNumber #'break-visibility = #end-of-line-invisible

    \time 6/8
    \tempo 4. = 60

    \key a \major
    \new Voice = "lights"  {
      \PretendLyricsNotes
    }
    \new Lyrics \lyricsto "lights" {
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

%{
            _______      
           / ____(_)___  
          / /_  / / __ \ 
         / __/ / / / / / 
        /_/   /_/_/ /_(_)

%}
