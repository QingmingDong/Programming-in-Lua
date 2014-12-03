/*
 * =====================================================================================
 *
 *       Filename:  simple-lua.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  12/01/14 14:06:53
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include <stdio.h>
#include <string.h>
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
int main()
{
	char buff[256];
	int error;
	lua_State *L = luaL_newstate();
	luaL_openlibs(L);
	while (fgets(buff,  sizeof(buff), stdin) != NULL) {
		error = luaL_loadbuffer(L, buff, strlen(buff), "line") || lua_pcall(L, 0, 0, 0);
		if (error) {
			fprintf(stderr, "%s", lua_tostring(L, -1));
			lua_pop(L, 1);
		}
	}
	lua_close(L);
	return 0;
}

