// Copyright (C) 2021-2025 Steffen Itterheim
// Refer to included LICENSE file for terms and conditions.

using Lua;
using Lua.Runtime;

namespace ConsoleApp1;

public sealed class LuaList<T> : ILuaUserData
{
    static readonly LuaFunction __lenList = new(Metamethods.Len, (context, _) =>
    {
        return new ValueTask<int>(context.Return(3));
    });

    static LuaTable s_Metatable;
    public LuaTable Metatable { get => s_Metatable; set => throw new NotImplementedException(); }

    public LuaList()
    {
        s_Metatable = new LuaTable();
        s_Metatable[Metamethods.Len] = __lenList;
    }
}