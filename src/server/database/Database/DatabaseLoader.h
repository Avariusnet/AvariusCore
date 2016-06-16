/*
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef DatabaseLoader_h__
#define DatabaseLoader_h__

#include "DatabaseWorkerPool.h"
<<<<<<< HEAD
#include "DBUpdater.h"

#include <functional>
#include <stack>
#include <queue>

// A helper class to initiate all database worker pools,
// handles updating, delays preparing of statements and cleans up on failure.
class TC_DATABASE_API DatabaseLoader
=======
#include "DatabaseEnv.h"

#include <stack>
#include <functional>

// A helper class to initiate all database worker pools,
// handles updating, delays preparing of statements and cleans up on failure.
class DatabaseLoader
>>>>>>> origin/master
{
public:
    DatabaseLoader(std::string const& logger, uint32 const defaultUpdateMask);

    // Register a database to the loader (lazy implemented)
    template <class T>
    DatabaseLoader& AddDatabase(DatabaseWorkerPool<T>& pool, std::string const& name);

    // Load all databases
    bool Load();

    enum DatabaseTypeFlags
    {
        DATABASE_NONE       = 0,

        DATABASE_LOGIN      = 1,
        DATABASE_CHARACTER  = 2,
        DATABASE_WORLD      = 4,

        DATABASE_MASK_ALL   = DATABASE_LOGIN | DATABASE_CHARACTER | DATABASE_WORLD
    };

private:
    bool OpenDatabases();
    bool PopulateDatabases();
    bool UpdateDatabases();
    bool PrepareStatements();

    using Predicate = std::function<bool()>;
<<<<<<< HEAD
    using Closer = std::function<void()>;

    // Invokes all functions in the given queue and closes the databases on errors.
    // Returns false when there was an error.
    bool Process(std::queue<Predicate>& queue);
=======

    static bool Process(std::stack<Predicate>& stack);
>>>>>>> origin/master

    std::string const _logger;
    bool const _autoSetup;
    uint32 const _updateFlags;

<<<<<<< HEAD
    std::queue<Predicate> _open, _populate, _update, _prepare;
    std::stack<Closer> _close;
=======
    std::stack<std::pair<Predicate, std::function<void()>>> _open;
    std::stack<std::function<void()>> _close;
    std::stack<Predicate> _populate, _update, _prepare;
>>>>>>> origin/master
};

#endif // DatabaseLoader_h__
