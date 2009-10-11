\version "2.12.1"

%{

          888      8888888 .d8888b.  888    888 88888888888 .d8888b.
          888        888  d88P  Y88b 888    888     888    d88P  Y88b
          888        888  888    888 888    888     888    Y88b.
          888        888  888        8888888888     888     "Y888b.
          888        888  888  88888 888    888     888        "Y88b.
          888        888  888    888 888    888     888          "888
          888        888  Y88b  d88P 888    888     888    Y88b  d88P
          88888888 8888888 "Y8888P88 888    888     888     "Y8888P"

                               Pretend (reprise)
                                 The Listening

                   Composed and arranged by Lights Poxleitner
                  Arranged for vocals and piano just for you!

%}

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
% more __ than a bro- ken toy.
  Wish I were a lit -- tle girl
  with -- out the weight of the world.

  \chorustext

  Re -- mem -- ber the time
  we had so -- da for wine
  and we got by on gra -- ti -- tude?

  The worst they could do to you
  was check your at -- ti -- tude.

  Yeah, when fights were for fun?
  We had wa -- ter in guns
  and a place we could call our own?

  How we lost hold of home,
  I guess I'l ne -- ver know! __ __

  \chorustext
  And when it's the end,
  our lives will make sense.
  We'll love, we'll bend;
  let's play pre -- tend.
  Let's play pre -- tend! __ __ __ __ __

  It's_not gon -- na be long
  be -- fore we're all gone
  with no -- thing to show for them.

  Stop ta -- king lives; come on,
  let's all grow up a -- gain.
}

%%%%%%%%%%%%%%%%%%%
\parallelMusic #'(introRH introLH) { 
  % Odd stuff here. What I'm doing is I'm asking nicely for lp to allow me to
  % compose one measure of vocals followed by one measure of treble followed by
  % one measure of bass clef. It's faster for me to do it this way than to
  % compose all the vocals at once followed by all the treble and then all the
  % bass.
  % intro, part 1
  << { cis4.\mp\<\arpeggio( cis) e\mf\!\arpeggio( e) | cis e b e
    } \\ { e2.\arpeggio gis\arpeggio a,
    } >> | % Treble
  a'2.\arpeggio <cis, gis'>\arpeggio fis, <e gis> | % Bass
  % I know it's confusing. Sorry about the intros.

  % intro, part 2
  << { cis4.( cis) e( e) |
    } \\ { e2.\mp  gis
    } >> cis,2.(\p  b) | % Treble
  a2. <cis gis'> fis( <e gis>) | % Bass
}

\parallelMusic #'(melodyVoiceA melodyRHa melodyLHa) { 
  % while, I act like a...
  cis4\) a8 e'\( cis b |  % Voice
  <cis e>2. | % Treble
  r2. | % Bass

  % child
  cis4\) a8 e'\( cis b | % Voice
  e2. | % Treble
  b'2. | % Bass

  % kid again
  % Curse you, measure 47!
  \triplet {b8 a fis\)} r2 | % Voice
  <a, cis>2. ~ | % Treble
  fis2. ~ | % You get the idea.

  % 12     it
  r2 r8 cis'8 |
  <a cis>4.  <a cis>4. |
  fis4.  e4. |

  % gets
  fis8\( fis fis \triplet {fis e cis} cis |
  <d fis>2. |
  b'2. |

  % body
  e8 e e \triplet {e8 cis b ~ } b8\) |
  <cis e>2. |
  a2. |

  % 15
  r2. |
  b4. cis |
  <e gis>4. <e a> |

  % cause
  r4 a8 e'\( cis b |
  b2. |
  <e gis>2. |

  % watch-ing
  b16 cis8.\) a8 e'\( cis b |
  r4. <cis e> |
  a,4.\mf a' |

  % talk-ing
  b16 cis8.\) a8 e'8\( cis b ~ |
  e4.\mp\> e | 
  <gis b>4. <gis b> |

  % innocence
  b8 \triplet {b a fis\) ~}  fis4.\p |
  cis4. cis |
  <fis a>4. <fis a> |

  % 20   wish
  r2 r8 cis'8 |
  cis4.\! cis |
  <fis a> <e a> |

  % I were
  fis8\(\mp fis fis \triplet {fis e cis8\)} cis8 |
  <d fis>4.\> <d fis> |
  b' b |
  
  % without
  e8\( e e \triplet {e cis cis ~ } cis ~ |
  <cis e>4. <cis e> |
  a a |

  % ~world
  b2.\) |
  b4.\p\! cis |
  <e gis> <e a> |

  % 24 r it would be
  r4. a8 b a |
  b2. |
  <e gis>2. |

  % nice to start
  a'2     e8 e |
  a'4.\mf <cis, e> |
  a,2. |
}

\parallelMusic #'(chorusVoiceA chorusRHa chorusLHa) {
  % Starting at an odd place so I can reuse the vocals again.
  % over a-
  b'4\( gis e\) |
  <gis cis e>4. <gis' cis,> |
  cis2. |

  % ~gain!
  cis2 ~ cis8 a'\( |
  <a, cis>4. <a cis>|
  fis,2. |

  % ~fore
  fis4 a,8 e'4 cis8 ~ |
  % Sure, this sounds kinda funny, but I like it that way. Feel free to
  % uncomment the other one if you're in the mood for something simpler.
  % (Neither one sounds accurate.)
  <a d fis>4.\> <a d e>\! |
  %<a fis'>4. <a fis'> |
  d'2. |

  % men.
  cis2 ~ cis8\) a |
  <a cis e>4. <a cis e>4. |
  a2. |

  % give
  b4. cis4. |
  <gis b e>4.\> <gis b e>4. |
  e'2. |

  % bend
  a4. cis4 b16( a |
  a4. <a cis>4. |
  fis,4. fis'4. |

  % ~ay pretend
  gis2) a8 a ~ |
  r2.\!\p |
  <e gis>2. |
}

\parallelMusic #'(melodyVoiceB melodyRHb melodyLHb) {
  % ~end.
  a2. |
  <a cis e>4. <a cis e>4. |
  a,2 b8\< cis |

  % 33
  r2. |
  <gis b e>4. <gis b e>4. |
  e2\! cis8\> b |

  % 34
  r2. |
  <fis a cis>4. <fis a cis>4. |
  fis2\! gis8 a |

  % 35
  % I have three different alternate versions of this measure. The way I see it,
  % the music sounds like there's an <e, cis'>4.( <e, b>4.)-. but it's awkward
  % to both typeset and play. Either your right hand does alll the work and the
  % notes are really hard to play or your left hand does the work and it looks
  % horrible on the page. The other way is to instead make it a gis instead of
  % an e, but that sounds funny. It's much less hard to typeset, though. I
  % actually might do that.
  % Uncomment each one if you want.
  r4 a8\( e' cis b |
  % Variation 1: G# instead of E. Incorrect, easy to read and play
  <e gis cis>4.( <gis b>8)-. r4 |
  e4. r4. |
  % Variation 2: low E and high C played by right hand- correct; hard to play
  % Did she really play it this way? Golly, she must have really long fingers; I
  % can't do it. I'm no contortionist, so I don't think I'll write it this way.
% <e cis'>4.(<e b'>8)-. r4 |
% e2. |

  % Variation 3: low E played by left hand, C played by right- correct; ugly
  % Note that lilypond complains about too many clashing notes here.
  % Did she really play it this way?
% cis4.( b8)-. r4 |
% << { e2 r4 }\\{ 
%  \override Stem #'direction = #UP
%  e'4.( e8)-. r4 
%  \revert Stem #'direction } >> |

  % times we had
  cis4\)  a16 a e'8\( cis b |
  <a cis e>4. <a cis e>4. |
  a4 r2 |

  % wine
  cis4\) a16 a e'8\( cis b |
  <gis b e>4.\> <gis b e>4. |
  r2. |

  % gratitude
  % Curse you, measure 47!
  \triplet {b8 a fis ~ } fis4\) r |
  <a cis>4. <a cis> |
  fis'4. fis |

  % 40  the
  r2 r8 a |
  <a cis>4.\! <a cis> |
  fis4. e |

  % worst they could
  fis'8\( fis fis \triplet {fis e cis ~ } cis\) |
  <d fis>4. <d fis> |
  b'4. b |

  % was check your
  e8\( e e \triplet {e cis b ~ } b8 ~ |
  <cis e>4. <cis e> |
  a4. a |

  % ~ude
  b4.( cis4)\) r8 |
  b4. cis |
  <e gis>4. <e a> |

  % Yeah, when
  r4 b16 a e'8\( cis b |
  b4. b |
  <e gis>4. <e gis> |

  % fun! We had
  cis4\) a16 a e'8\( cis b |
  <a cis e>4.\mf <a cis e>4. |
  a,2. |

  % guns, and a
  cis4\) a16 a e'8\( cis b |
  <gis b e>4. <gis b e> |
  e2. |

  % 47: call our own
  % this measure alone took like TEN MINUTES. Sneaky lights. She added THREE
  % notes at once! Is this the first time in the song she did that? Golly, I
  % sure hope so because I'd have typeset it completely wrong if it isn't.
   
  % I HATE THIS MEASURE. THIS was the measure I discovered that sneaky ol'
  % Lights always used 3-note chords instead of 2-note chords. BUH. this measure
  % alone cost AN HOUR of my time, and I would have been FINISHED by now.

  % Oh well, It's all par for the course, isn't it?
  \triplet {b8 a fis ~ } fis2\) ~ |
  <fis a cis>4. <fis a cis> |
  fis2. |

  % gah, I hate counting all these measures... 50 or something. it's 2am, and
  % I'm going to bed after this.
  fis4 r2 |
  % I'm sorry about this tie. It looks odd to have three notes tied at
  % once in the vocals. Maybe a dotted note would be a bit more... noteworthy,
  % if you'll pardon the pun, but that would break all my bar checks.
  <fis a cis>4. <e a cis> |
  r2. |

  % How we lost hold -- this one is odd because the "How" falls on beat one
  % instead of the last beat in the prev. measure
  fis'8\( fis fis \triplet { fis e cis ~ } cis8\) |
  r4. <b' d fis> |
  % sooo many fiss!
  b2. |

  % I guess I'll
  e8\( e e \triplet {e cis\) cis ~ } cis8( |
  << {<cis fis>4.\(\arpeggio <cis e>\)} \\ {a2.\arpeggio\p} >> |
  % note to self: make this A quiet, pick apart a hundred flowers
  a2.\arpeggio |

  % ~owww.
  b4. cis |
  b4.\< cis |
  <e' gis>4. <e a> |

  % ~~ow!
  % thought about using a \breathe mark, but then I realised, "Oh! I have a rest
  % there!"
  e4) r8 a,8 b a |
  b4. b |
  <e gis>4. <e gis> |

  % nice to start
  a'2     e8 e |
  <a cis e>4.\!\mf <a cis e> |
  \ottava #-1 % this note is really really low! the ottava simply shifts the
              % clef down by an octave
    a,,2.
    \ottava #0 
    |
}

% Too bad I can't simply copy this. Wait- actually, I bet I can.
\parallelMusic #'(chorusRHb chorusLHb) {
  % over a-
  <cis e>4. <cis e> |
  cis'2. |

  % ~gain!
  <fis, a cis>4. <fis a cis>|
  \ottava #-1 fis,,2. \ottava #0 |

  % ~fore
  <a d fis>4. <a d e> |
  % still like it this way, nyeh nyeh!
  %<a fis'>4. <a fis'> |
  d''2. |

  % men.
  <a cis e>4. <a cis e>4. |
  a2. |

  % give
  <gis b e>4. <gis b e>4. |
  e2. |

  % bend
  a4. <fis a cis>4. |
  fis2. |

  % ~ay pretend
  <gis b e>4. <gis b e>\mp\< |
  gis2. |

  % ~end. And
  <a cis e>4. <a cis e> |
  a2. |

  % when it's the
  <gis cis e>4.\!\f <gis cis e> |
  cis2. |
}

\parallelMusic #'(chorusRHoutro chorusLHoutro) {
  % end, our
  <fis a cis>4. <fis a cis>|
  \ottava #-1 fis,,2. \ottava #0 |

  % lives will make sense
  <a d fis>4.\< <a d e>8 r <a cis e> ~ |
  % still like it this way, nyeh nyeh!
  %<a fis'>4. <a fis'> |
  d''2 d8 r |

  % ~ense. We'll
  <a cis e>4.\! <a cis e>4. |
  a2. |

  % love, we'll
  <gis b e>4. <gis b e>4. |
  e2. |

  % bend; let's play
  a4.\> <fis a cis>4. |
  fis2. |

  % ~ay pretend. I'm in tears now. Powerful song. Thanks for letting me copy
  % it, Lights.
  <gis b e>2.\!\p |
  gis2. |
}

\parallelMusic #'(outroVoice melodyRHoutro melodyLHoutro) {
  % ~end
  a2. ~ |
  <cis e>4. <a cis e> |
  a2 b8\< cis |

  % 70
  a2 r4 |
  <gis b e>4. <gis b e> |
  e2\! cis8\> b |

  % 71 Let's 
  r4. cis4 gis'8 ~ |
  <fis a cis>4. <fis a cis> |
  fis2\! fis4 |
   
  % ~ay pre-
  gis4. e4 b8( |
  <e gis cis>4. <e gis b> |
  e2 ~ e8 fis |

  % ~teee~
  cis4 b e |
  <a cis>4. <a cis> |
  a2. |

  % ~eee~
  cis2 gis4) ~ |
  %<gis cis>4. <cis e>|
  <gis b>4. <cis e>->|
  cis4. r8 cis gis' |
  % fifteen minutes later, and that still doesn't look right... any ideas?

  % 75
  gis4 r2 |
  <fis, a cis>4. <fis a cis> |
  fis,2 fis4 |

  % It's not
  r4 a8 e'\( cis b |
  <e gis b>2. |
  e2. |

  % long before
  cis4\) a8 e'\( cis b |
  \ottava #1 <cis'' e>4.\p <cis e> |
  r2. |

  % gone with
  cis4\) a8 e'\( cis b |
  <b e>4. <b e> |
  r2. |

  % show for them
  b8 a a2\) |
  <a cis>4.\pp <a cis> |
  r2. |

  % 80
  r2. |
  <a cis>4. <a cis> |
  r2. |

  % Stop taking
  fis'8\( fis fis fis e16 cis ~ cis8\) |
  <b d>4.\mp\> <b d> |
  r2. |

  % let's all grow up again!
  e8\( e e e cis cis ~ |
  e4. \ottava #0 <a, cis e> |
  r2. |

  % ~ain.
  cis4.( b4.)\) ~ |
  <e gis b>4.  <e gis cis> |
  r2. |

  % 84
  b4 r2 |
  <e b'>4.\!\p^\markup { \italic rit. } cis' |
  r2. |

  % 85
  r2. |
  <a, cis e>2.\pp |
  r2. |

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lightsVoice = \relative c'' {
  r2. r2. r2. r2.
  r2. r2. r2. r4.
  e8\(\mp cis b |
  \melodyVoiceA
  \chorusVoiceA
  \melodyVoiceB
  \chorusVoiceA % whoo! I can recycle this!
  a4. r4 e'8 |
  \chorusVoiceA % whoo! I can recycle this!
  \outroVoice
  \bar "|."
}

pianoRH = {
  \relative c' {
    \introRH
    \melodyRHa
    \chorusRHa
    \melodyRHb
    \chorusRHb
    \chorusRHoutro
    \melodyRHoutro
    \bar "|."
  }
}
pianoLH = {
  \relative c {
    \introLH
    \melodyLHa
    \chorusLHa
    \melodyLHb
    \chorusLHb
    \chorusLHoutro
    \melodyLHoutro
    \bar "|."
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%
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
>> }

%{
            _______      
           / ____(_)___  
          / /_  / / __ \ 
         / __/ / / / / / 
        /_/   /_/_/ /_(_)

%}
