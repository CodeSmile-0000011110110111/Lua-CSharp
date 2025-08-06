// Copyright (C) 2021-2025 Steffen Itterheim
// Refer to included LICENSE file for terms and conditions.

using Lua;
using Lua.Runtime;

namespace ConsoleApp1;

public class EnumValue : ILuaUserData
{
    public EnumValue()
    {
        var indexFunc = new LuaFunction("enum.__index", (context, token) =>
        {
            Console.WriteLine("EnumValue enum.__index called ...");
            return new ValueTask<Int32>(context.Return(1234567890));

        });
        var lenFunc = new LuaFunction("enum.__len", (context, token) =>
        {
            Console.WriteLine("EnumValue enum.__len called ...");
            return new ValueTask<Int32>(context.Return(3));

        });
        Metatable = new LuaTable();
        Metatable[Metamethods.Index] = indexFunc;
        Metatable[Metamethods.Len] = lenFunc;
    }
    public LuaTable? Metatable { get; set; }
}