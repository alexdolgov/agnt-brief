// SPDX-License-Identifier: MIT

pragma solidity >=0.8.19;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
interface IJeckpot {

    struct PlayerInfos { 
        uint256 lastGame;
        uint256 lastTimePVP;
        uint256 amountPlayed;
        uint256 points;
        uint256 volume;
        uint256 lastHoldAmount;
        uint256 totalWin;
        string username;
    }

    function playersInfos(address user) external view returns (PlayerInfos memory playersInfos);

}

contract KOVIN {

    struct PlayerInfos { 
        uint256 lastGame;
        uint256 lastTimePVP;
        uint256 amountPlayed;
        uint256 points;
        uint256 volume;
        uint256 lastHoldAmount;
        uint256 totalWin;
        string username;
    }

    mapping(address => PlayerInfos) public playersInfos;

    function setPlayerInfos(address user, uint256 volume, string memory username) public {
        playersInfos[user] = PlayerInfos({
            lastGame: 0,
            lastTimePVP: 0,
            amountPlayed: 0,
            points: 0,
            volume: volume,
            lastHoldAmount: 0,
            totalWin: 0,
            username: username
        });
    }

}

contract Storage {

    uint256 public hundredK = 100000*10**18;
    uint256 public oneM = 1000000*10**18;
    uint256 public tenM = 10000000*10**18;
    uint256 public warrior = 1000000000000*10**18;
    address public jeckpot;

    constructor(address _jeckpot) {
        jeckpot = _jeckpot;
    }

   

    function getVolume(address user) external view returns (uint256 volume) {
        IJeckpot.PlayerInfos memory infos = IJeckpot(jeckpot).playersInfos(user);
        return infos.volume;
    }

    
    
    function wager100k(address user) external view returns (bool) {
        IJeckpot.PlayerInfos memory infos = IJeckpot(jeckpot).playersInfos(user);
        if(infos.volume >= hundredK){
            return true;
        }
        else{
            return false;
        }
    }

    function wager1M(address user) external view returns (bool) {
        IJeckpot.PlayerInfos memory infos = IJeckpot(jeckpot).playersInfos(user);
        if(infos.volume >= oneM){
            return true;
        }
        else{
            return false;
        }
    }

    function wager10M(address user) external view returns (bool) {
        IJeckpot.PlayerInfos memory infos = IJeckpot(jeckpot).playersInfos(user);
        if(infos.volume >= tenM){
            return true;
        }
        else{
            return false;
        }
    }

    function wagerWarrior(address user) external view returns (bool) {
        IJeckpot.PlayerInfos memory infos = IJeckpot(jeckpot).playersInfos(user);
        if(infos.volume >= warrior){
            return true;
        }
        else{
            return false;
        }
    }

}