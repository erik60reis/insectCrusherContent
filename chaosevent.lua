function Start()
    if (game.roundNumber == 1) then
        game.lives = 35
        game.rightSideLives = 35
    end
end
function OnRoundStarted()
    wait(1.5)
    newRoundNumber = game.roundNumber + 80
    gameInsectHealthBonus = Math.floor((game.roundNumber - 5) / 10)
    if (newRoundNumber % 30 == 0) then
        clone = game.SpawnCockroach()
        clone.speed = 2
        incrementalgiantcockroachhealth = (newRoundNumber % 30) * 5
        if (incrementalgiantcockroachhealth > 50) then
            incrementalgiantcockroachhealth = 50
        end
        clone.insecthealth = 100 + incrementalgiantcockroachhealth
        if (newRoundNumber >= 150) then
            clone.beeShieldAppearTime = 0.5
            clone.beeShieldDisappearTime = 5
        end
        clone.transform.localScale = Vector3(5, 5, 1)
        if (newRoundNumber >= 90) then
            for i=1,5,1 do
                game.SpawnBee()
                if (newRoundNumber >= 120) then
                    clone3 = game.SpawnCockroach()
                    clone3.speed = 10
                    clone3.insecthealth = 3
                end
                wait(3)
            end
            wait(5)
        end
    else
        for a=1,5,1 do
            presetNumber = Random.RandomIntBetween(0, 6)

            if (newRoundNumber >= 40) then
                presetNumber = Random.RandomIntBetween(0, 10)
            elseif (newRoundNumber >= 25) then
                presetNumber = Random.RandomIntBetween(0, 9)
            end

            if (presetNumber == 0) then
                for i=1,5,1 do
                    clone = game.SpawnBee()
                    clone.speed = 15

                    wait(0.4)

                    clone2 = game.SpawnCockroach()
                    clone2.speed = 15
                    clone2.insecthealth = 4 + gameInsectHealthBonus

                    wait(0.4)

                    clone3 = game.SpawnBee()
                    clone3.speed = 15

                    wait(3.5)
                end
            elseif (presetNumber == 1) then
                for i=1,8,1 do
                    clone = game.SpawnCockroach()
                    clone.speed = 5
                    if (newRoundNumber >= 25) then
                        clone.insecthealth = 2 + gameInsectHealthBonus
                    end
                    if (newRoundNumber >= 50) then
                        clone.insecthealth = 3 + gameInsectHealthBonus
                    end
                    for j=1,4,1 do
                        clone2 = game.SpawnBee()
                        clone2.speed = 7
                    end
                    wait(0.45)
                end
                wait(4)
            elseif (presetNumber == 2) then
                loopTimes = 5
                cooldown = 1.5
                if (newRoundNumber >= 25) then
                    loopTimes = 8
                end
                if (newRoundNumber >= 32) then
                    cooldown = 0.8
                end
                for i=1,loopTimes,1 do
                    clone = game.SpawnCockroach()
                    clone.speed = Random.Range(7, 10)
                    clone.insecthealth = 2 + gameInsectHealthBonus
                    wait(cooldown)
                end
            elseif (presetNumber == 3) then
                for i=1,3,1 do
                    clone = game.SpawnCockroach()
                    clone.speed = 8
                    if (newRoundNumber >= 32) then
                        clone.speed = 10
                    end
                    clone.insecthealth = 5 + gameInsectHealthBonus
                    wait(1.2)
                end
                wait(4)
            elseif (presetNumber == 4) then
                insectsToSpawnInARow = 3
                if (newRoundNumber >= 35) then
                    insectsToSpawnInARow = 4
                end
                for i=1,10,1 do
                    isACockroachSpawn = Random.Range(0, 100) < 50
                    for j=1,insectsToSpawnInARow,1 do
                        if (isACockroachSpawn) then
                            clone = game.SpawnCockroach()
                            clone.speed = Random.Range(9, 12)
                            if (newRoundNumber >= 25) then
                                clone.insecthealth = 2 + gameInsectHealthBonus
                            end
                            if (newRoundNumber >= 40) then
                                clone.insecthealth = 3 + gameInsectHealthBonus
                            end
                        else
                            clone = game.SpawnBee()
                            clone.speed = Random.Range(9, 12)
                        end
                        wait(0.15)
                    end
                    wait(2.5)
                end
            elseif (presetNumber == 5) then
                for i=1,8,1 do
                    clone = game.SpawnSnail()
                    clone.speed = 7
                    if (Random.Range(0, 100) < 50) then
                        clone.spawnBeeChancePercentage = 100
                        clone.insecthealth = 2 + gameInsectHealthBonus
                    else
                        clone.spawnBeeChancePercentage = 0
                        clone.insecthealth = 3 + gameInsectHealthBonus
                    end
                    wait(2)
                end
            elseif (presetNumber == 6) then
                for i=1,7,1 do
                    if (Random.Range(0, 100) < 50) then
                        clone = game.SpawnSnail()
                        clone.speed = 8
                        if (Random.Range(0, 100) < 50) then
                            clone.spawnBeeChancePercentage = 100
                            clone.insecthealth = 2 + gameInsectHealthBonus
                        else
                            clone.spawnBeeChancePercentage = 0
                            clone.insecthealth = 3 + gameInsectHealthBonus
                        end
                    else
                        clone = game.SpawnBee()
                        clone.speed = 8
                    end
                    wait(2)
                end
            elseif (presetNumber == 7) then
                clone = game.SpawnRat()
                clone.speed = 4
                clone.insecthealth = 40 + gameInsectHealthBonus
                for i=1,7,1 do
                    clone2 = game.SpawnCockroach()
                    clone2.speed = 9
                    clone2.insecthealth = 3 + gameInsectHealthBonus
                end
            elseif (presetNumber == 8) then
                for i=1,15,1 do
                    clone = game.SpawnCockroach()
                    clone.speed = Random.Range(7, 10)
                    clone.insecthealth = 3 + gameInsectHealthBonus
                    wait(0.4)
                end
            elseif (presetNumber == 9) then
                for i=1,4,1 do
                    clone = game.SpawnCockroach()
                    clone.speed = Random.Range(7, 10)
                    clone.insecthealth = 2 + gameInsectHealthBonus
                    clone.beeShieldAppearTime = Random.Range(0.55, 1)
                    clone.beeShieldDisappearTime = Random.Range(0.75, 1.5)
                    clone.beeShieldActive = true
                    wait(1.5)
                end
            elseif (presetNumber == 10) then
                for i=1,5,1 do
                    clone = game.SpawnCockroach()
                    clone.speed = 8.5
                    clone.insecthealth = 5 + gameInsectHealthBonus
                    wait(1.5)
                end
                wait(5)
            end
        end
    end
    
    wait(0.5)
end
