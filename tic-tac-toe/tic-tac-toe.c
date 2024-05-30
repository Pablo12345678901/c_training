#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

/* Size of playboard */
#define SIZE 3
#define ROWS SIZE
#define COLS SIZE

typedef enum {
    SHAPE_X = 0,
    SHAPE_O,
    COUNT_SHAPES,
} Shape;

typedef enum {
    CELL_EMPTY = 0,
    CELL_FULL,
} Cell;

char shape_chars[COUNT_SHAPES] = {
    [SHAPE_X] = 'X',
    [SHAPE_O] = 'O',
};

typedef struct {
    bool quit;
    Cell cells[ROWS][COLS];
    int filled_count;
    int cur_row;
    int cur_col;
    Shape shape;
} Game;

static int row ;
static int col ; 
static int i_i ;
static size_t i_s ;
static Shape s ; 
static char * player_1 ;
static char * player_2 ;
/* Variables to manage the change of player */
int counter = 1 ;
static char * current_player ;

void game_render(const Game *game)
{
    for (row=0; row < ROWS; ++row) {
        for (col = 0; col < COLS; ++col) {
            bool selected = row == game->cur_row && col == game->cur_col;

            putc(selected ? '[' : ' ', stdout);
            Cell cell = game->cells[row][col];
            putc(cell == CELL_EMPTY ? '*' : shape_chars[cell - CELL_FULL], stdout);
            putc(selected ? ']' : ' ', stdout);
        }
        putc('\n', stdout);
    }
}

typedef int Outcome;

bool check_row(const Game *game, int row, Shape s)
{
    for (col = 0; col < COLS; ++col) {
        if (game->cells[row][col] - CELL_FULL != s) {
	  
            return false;
        }
    }
    return true;
}

bool check_col(const Game *game, int col, Shape s)
{
    for (row = 0; row < ROWS; ++row) {
        if (game->cells[row][col] - CELL_FULL != s) {
            return false;
        }
    }
    return true;
}

bool check_main_diag(const Game *game, Shape s)
{
    for (i_i = 0; i_i < SIZE; ++i_i) {
        if (game->cells[i_i][i_i] - CELL_FULL != s) {
            return false;
        }
    }
    return true;
}

bool check_sec_diag(const Game *game, Shape s)
{
  for (i_i = 0; i_i < SIZE; ++i_i) { /* i = int */
        if (game->cells[i_i][SIZE - i_i - 1] - CELL_FULL != s) {
            return false;
        }
    }
    return true;
}

typedef int Outcome;

Outcome game_check_victory(Game *game)
{
    for (s = 0; s < COUNT_SHAPES; ++s) {
      for (i_i = 0; i_i < SIZE; ++i_i) { /* i = int */
            if (check_row(game, i_i, s)) return s + 1;
            if (check_col(game, i_i, s)) return s + 1;
        }
        if (check_main_diag(game, s)) return s + 1;
        if (check_sec_diag(game, s)) return s + 1;
    }

   
    return 0;
}


void game_move(Game *game, char c)
{
    switch (c) {
    case 'a':
        game->cur_col -= 1;
        break;
    case 'd':
        game->cur_col += 1;
        break;
    case 'w':
        game->cur_row -= 1;
        break;
    case 's':
        game->cur_row += 1;
        break;
    case 'q':
        game->quit = true;
        break;
    case ' ': {
        Cell *cell = &game->cells[game->cur_row][game->cur_col];
        if (*cell == CELL_EMPTY) {
            *cell = CELL_FULL + game->shape;
            game->filled_count += 1;
	    

            Outcome outcome = game_check_victory(game);
            if (outcome) {
                game_render(game);
                printf("\nThe Winner is ...\n") ;
		       printf("\n\t<< %s >> !\n\n", current_player);
                game->quit = true;
            } else if (game->filled_count == ROWS*COLS) {
                game_render(game);
                printf("\n\tNo winner, try another time !\n\n");
                game->quit = true;
            }
            game->shape = 1 - game->shape;
	    	    /* Change of current player name */
	    if (counter == 1)
	      { current_player = player_2 ;
		counter++ ;
	      }
	    else if (counter == 2)
	      { current_player = player_1 ;
		counter-- ;
	      }
        }
    } break;

    default:
    {}
    }
    if (game->cur_col < 0) game->cur_col = 0;
    if (game->cur_col >= COLS) game->cur_col = COLS-1;
    if (game->cur_row < 0) game->cur_row = 0;
    if (game->cur_row >= ROWS) game->cur_row = ROWS-1;
}

char *
ask_for_usernames(int player_number)
{
  char * firstName = malloc (20 * sizeof(char)) ;
  char c ; /* For discard */
  printf("\nPlayer %d : What's your name ?\n\n", player_number) ;
  printf("-> ") ; 
  scanf("%s", firstName);
while((c = getchar()) != '\n' && c != EOF)
  ; /* Avoid overflow from STDIN */

 printf("\n=================") ;
 printf("\nPlayer %d : %s\n", player_number, firstName) ;
 printf("\nNice to meet you \"%s\".", firstName) ;
 printf("\nGet ready for the next battle !") ; 
 printf("\n-----------------\n") ;
	return firstName ;
}


int main(void)
{
    static Game game = {0};
    static char cmd[256];

    printf("\n*=*=*=*=*=*=*=*=*\n") ;
    printf(  "|| TIC-TAC-TOE ||\n") ;
    printf(  "*=*=*=*=*=*=*=*=*\n") ;
    
    printf("\nWelcome !\n") ;
    /* Ask for usernames - they will be shown within the game */ 
    player_1 = ask_for_usernames(1) ;
    player_2 = ask_for_usernames(2) ;

    /* Starting the game */
    printf("\n=================");
    printf("\nFIGHT\n") ;
    printf(".................\n");
    printf("<< %s >> VS << %s >> !", player_1, player_2) ;
    printf("\n.................\n\n");
    current_player = player_1 ;
    while (!game.quit) {

      game_render(&game);
      printf("\nCurrent player : %s > ", current_player);
      fgets(cmd, sizeof(cmd), stdin);

      size_t n = strlen(cmd);
      for (i_s = 0; i_s < n; ++i_s) {
	game_move(&game, cmd[i_s]);
      }
      printf("\n") ; /* Esthetic */
      printf("-----------------\n\n") ;
    }

    return 0;
}
