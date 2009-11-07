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

                                     River
                                 The Listening

                   Composed and arranged by Lights Poxleitner
                  Arranged for vocals and piano just for you!

%}

% Lyrics graciously provided by
% http://www.iamlights.com/discography/album/listening/river
RiverChorustext = \lyricmode {
  Take me, ri -- ver!
  Car -- ry me far!
  Lead me, ri -- ver,
  like a mo -- ther. % I'm tempted to make a 'your mom' joke, but I hate those.
                     % ...Naaah.
  Take me o -- ver
  to some o -- ther un -- known.
  Put me in the un -- der -- tow.
}
RiverText = \lyricmode {
  %{ 
    I've got a lov -- e -- ly bunch of co -- co -- nuts,
    There they are a- stan -- ding in a row!
    Big ones, small ones, some as big as your head...
  %} 
  % ...no, that doesn't seem right, maybe I should listen to it more closely.

  Out ac -- cross cit -- ies, I see 
  buil -- dings burn in -- to pi -- les
  and watch the world in won -- der as 
  moun -- tains turn in -- to ti -- les

  and trees lo -- sing their leaves and our 
  fa -- ces be -- com -- ing ti -- red.
  I wish I could dis -- cov -- er 
  some -- thing that does -- n't ex -- pi -- re.

  Come and stum -- ble me!

  \RiverChorustext

  Such are the things that make a 
  king -- dom rum -- ble and shat -- ter;
  the same dy -- nam -- ic that
  a -- no -- ther day would nev -- ver mat -- ter.
  It real -- ly just dep -- ends on who's 
  giv -- ing and who's re -- ceiv -- ing,
  and things that don't make sense are 
  al -- ways a lit -- tle de -- ceiv -- ing.

  Come and hum -- ble me!

  \RiverChorustext

  I wan -- na go where you're go -- ing;
  a fol -- low -- er fol -- low -- ing.
  Chan -- ging, but ne -- ver changed.
  Claim -- ing, but ne -- ver claimed.
  % In that part, she sings 'the never' but all sources say 'but never'. Which
  % one is it? ONLY LIGHTS KNOWS, MUAHAHAHA. This is why this is unnoficial
  % music, yo.

  \RiverChorustext
}

RiverVoiceA = \relative c'' {
  % Out 
  d8 e e e c c c d |
  
  % -dings
  e8 e e e e c c f |

  % r watch
  r8 f f f e e e e |

  % -mountains
  f8 f f f f d d e |

  %  r losing
  r8 e e e e c c d |

  % -faces
  e8 e e f e c c f |

  % I could
  r8 f f f f e e e |

  % that doesn't
  e8 f f f f e d c |

  % stumble me
  d4 e c4. r8 |
}

RiverVoiceChorus = \relative c'' {
  % Take
  r8 g'8 r8 g g4\( e4\) |

  % Carry me far!
  r8 g g g a2 |

  % Lead
  r8 g r g g4\( f\) |

  % Like a mother!
  r8 g g g a2 |

  % Take 
  r8 g r g g4\( e\) |

  % To some other unknown!
  r8 g g g\( a4. \)  g8 ~ |

  % -known! Pull 
  g8 f2. c8 |

  % me in the undertow!
  g'8 g g e e4 c |
}

RiverVoiceSlow = \relative c' {
  % wanna go
  e8 e d4 c4 a8 e ~ |

  % -ing
  e8 d2 r4 c8 |

  % follower follow-
  e4 d c a8 e ~ |

  % -following
  e8 c2. r8 |

  % Changing
  d4 c c8 d a a ~ |

  % -changed.
  a4 r2. |

  % Claiming
  e4 d c8 e d d ~ |
  
  % -claimed!
}

%%%%%%%%%%%%%%%%%%%
\parallelMusic #'(RiverIntroRH RiverIntroLH) {
  % Intro
  r8 g'\pp\( e e'4-> g,8 c4-> ~ |
  c'1 |

  c8 g e c'4-> f,8 g4\) ~ |
  c2.             b4 |

  r8 g\p\( f g'4-> a,8 f'4-> ~ |
  f2..              e8 |

  r8 g, f e'4-> a,8 c4\) |
  <f a>2.        a8 g8 |

  % --
  r8 g\mp\( e e'4-> g,8 c4 ~ |
  c,4.( ~ <d e g>4. ~ <d e g>4) |

  c8 g e c'4-> f,8 g4\) ~ |
  c4.( <d e g>4.) b8 g |

  r8 g( f g'4-> a,8 f'4-> ~ |
  f4.( <f' g c>4. ~ <f g c>4) |

  r8 g, f a'4-> a,8 d c) |
  f,4.( <f' a>4) c8 <e g>4 |
}

\parallelMusic #'(RiverRHA RiverLHA) {
  % Out across
  r1 |
  c4.( <d e g>4. ~ <d e g>4) |

  % I see buildings
  r1 |
  c4.( <f g c>4.) b8 g |

  % .. the world
  r2 r8 c8 d4 |
  f,4.( <f' a>4. ~ <f a>4) |

  % -tains turn in to tiles
  a4. g4. d8 c |
  c4. <f c'>4. <d g>4 |

  % losing their leaves
  % odd timing here, but I think I like that. I'll probably change it when I get
  % home though. No piano with me.
  g'8( c g d'4-> g,8 c4) |
  c4.( <d e g>4. ~ <d e g>4)|

  % faces becoming tired.
  g8( c g b4-> e,8 g4) |
  c4.( <d e g>4.) e8 c |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RiverLyricNotes = \relative c'' {
  R1 * 8
  \RiverVoiceA
  R1
  % \RiverVoiceChorus
  % \RiverVoiceA
  % R1
  % \RiverVoiceChorus
  % \RiverVoiceSlow
  % \RiverVoiceChorus
}

RiverPianoRH = {
  \relative c' {
    \RiverIntroRH
    \RiverRHA
  }
}
RiverPianoLH = {
  \relative c {
    \RiverIntroLH
    \RiverLHA
  }
}

