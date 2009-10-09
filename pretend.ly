\version "2.12.1"

\header {
  title       = "Pretend"
  subtitle    = "(Reprise)"
  composer    = "Lights"
  %arranger    = "gcr"
  opus        = "The Listening"
  %instrument  = "Piano"
  %meter       = \markup { \italic { Comfortable and honest } }
  % the below should actually be the meter, but I don't like how that's set on
  % the page and am too lazy to override the defaults. Ha.
  piece       = \markup { \italic { Comfortable and honest } }
}
#(set-default-paper-size "letter")

% Thanks to http://lsr.dsi.unimi.it/LSR/Item?id=328
triplet = #(define-music-function (parser location music) (ly:music?)
  #{ \times 2/3 $music #})


chorustext = \lyricmode {
  It would be nice
  to start o -- ver a -- gain!
  Be- fore we were men.
  I'd give; I'd bend.
  Let's play pre -- tend.
}

% Thanks to http://www.songlyrics.com/lights/pretend-lyrics/
text = \lyricmode {
  Once in a while, I act like a child
  to feel like a kid a -- gain.

  It gets like a pri -- son in
  the bo -- dy I'm liv -- ing in.

  'Cause ev -- ery -- one's watch -- ing
  and quick to start talk -- ing.
  I'm lo -- sing my in -- no -- cence.

% Wish I were a lit -- tle boy;
% be more than a bro- ken toy.
  Wish I were a lit -- tle girl
  with -- out the weight of the world.

  \chorustext

  Re -- mem -- ber the times
  we had so -- da for wine
  and we got by on gra -- ti -- tude?

  The worse they could do to you
  was check your at -- ti -- tude.

  Yeah, when fights were for fun?
  We had wa -- ter in guns?
  And a place we could call our own?

  How we lost sight of home;
  I guess I'l ne -- ver know

  \chorustext
  And when it's the end,
  our lives will make sense.
  We'll love, we'll bend;
  let's play pre -- tend.

  It's not go -- ing to_be long
  be -- fore we're all gone
  with no -- thing to show for them.

  Stop ta -- king lives; come on,
  let's all grow up a -- gain.
}

%%%%%%%%%%%%%%%%%%%
\parallelMusic #'(introRH introLH) { 
  % Odd stuff here. What I'm doing is I'm asking nicely for lp to let me print
  % both bars at the same time. It doesn't usually do that, but this makes
  % it easier for me.
  % intro, part 1
  << { cis4.\arpeggio( cis) e\arpeggio( e) | cis e b e
    } \\ { e2.\arpeggio gis\arpeggio a,
    } >> |
  a'2.\arpeggio <cis, gis'>\arpeggio fis, <e gis> |

  % intro, part 2
  << { cis4.( cis) e( e) |
    } \\ { e2.  gis
    } >> cis,2.  b |
  a2. <cis ais'> fis <e gis> |
}

\parallelMusic #'(melodyVoiceA melodyRHa melodyLHa) { 
  % while, I act like a...
  cis4 a8 e' cis b | 
  <cis e>2. |
  r2. |

  % child
  cis4 a8 e' cis b | 
  e2. |
  b'2. |

  % kid again
  \triplet {b8 a fis} r2 |
  cis2. ~ |
  fis2. ~ |

  % 12     it
  r2 r8 cis'8 |
  cis4.  cis4. |
  fis4.  e4. |

  % gets
  fis8 fis fis \triplet {fis e cis} cis |
  fis2. |
  b'2. |

  % body
  e8 e e \triplet {e8 cis b ~ } b8 |
  e2. |
  a2. |

  % 15
  r2. |
  b4. cis |
  gis4. a |

  % cause
  r4 a8 e' cis b |
  b2. |
  gis2. |

  % watch-ing
  b16 cis8. a8 e' cis b |
  r4. <cis e> |
  a2. |

  % talk-ing
  b16 cis8. a8 e'8 cis b ~ |
  e4. e | 
  b4. b |

  % innocence
  b8 \triplet {b a fis ~}  fis4. |
  cis4. cis |
  fis4. fis |

  % 20   wish
  r2 r8 cis'8 |
  cis4. cis |
  fis e |

  % wish I
  fis8 fis fis \triplet {fis e cis8} cis8 |
  fis4. fis |
  b' b |
  
  % without
  e8 e e \triplet {e cis cis ~ } cis ~ |
  e4. e |
  a a |

  % ~world
  b2. |
  b4. cis |
  gis a |

  % 24 r it would be
  r4. a8 b a |
  b2. |
  gis2. |
}

\parallelMusic #'(chorusVoice chorusRH chorusLH) {
  % nice to start
  a'2     e8 e |
  a'4. <cis, e> |
  a2. |

  % over a-
  b'4\( gis e\) |
  <gis cis e>4. <gis' cis,> |
  cis2. |

  % ~gain!
  cis2 ~ cis8 a' |
  <a, cis>4. <a cis>|
  fis,2. |

  % ~fore
  fis4 a,8 e'4 cis8 ~ |
  <a fis'>4. <a fis'> |
  d2. |

  % men.
  cis2. |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lightsVoice = \relative c'' {
  r2. r2. r2. r2.
  r2. r2. r2. r4.
  e8 cis b |
  \melodyVoiceA
  \chorusVoice
}

pianoRH = {
  \relative c' {
    \introRH
    \melodyRHa
    \chorusRH
  }
}
pianoLH = {
  \relative c {
    \introLH
    \melodyLHa
    \chorusLH
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "lyrics" <<
  % uncomment below to add bar numbers at every measure.
  %\override Score.BarNumber #'break-visibility = #end-of-line-invisible

  \time 6/8
  \key a \major
  \new Voice = "lights"  {
    \lightsVoice
  }
  \new Lyrics \lyricsto "lights" {
    \autoBeamOff
    \text
  }

  \new PianoStaff  = "piano" \with { connectArpeggios = ##t } <<
    \new Staff = "upper" {
      \key a \major
      \clef treble
      \pianoRH
    }
    \new Staff = "lower" {
      \key a \major
      \clef bass
      \pianoLH
    }
  >>
>>

