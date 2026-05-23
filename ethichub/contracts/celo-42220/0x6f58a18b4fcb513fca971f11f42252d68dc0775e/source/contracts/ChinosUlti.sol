// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.9;

// Import this file to use console.log
//import "hardhat/console.sol";
//import '@openzeppelin/contracts/access/Ownable.sol';
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

contract ChinosUlti {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    IERC20Upgradeable public betToken;
    uint256 public limitOfParticipants;
    uint256 public betAmount;
    uint256 private _betWin;
    address owner;

    struct Participant {
        address addr;
        uint256 number;
        uint256 bet;
    }

    mapping (address => Participant) public participants;
    address [] public participantsList;
    
    event WinnerWas(address indexed winner, uint256 prize);
    event SetNewParams(uint256 limitOfParticipants, uint256 betAmount, address betTokenAddress);

    modifier onlyOwner(){
        require(owner == msg.sender, 'not owner');
        _;
    }

    constructor(uint256 _limitOfParticipants, uint256 _betAmount, address _betToken) {
        limitOfParticipants = _limitOfParticipants;
        betAmount = _betAmount;
        betToken = IERC20Upgradeable(_betToken);
        owner = msg.sender;
    }

    function play(uint256 number, uint256 bet) external {
        require(participantsList.length < limitOfParticipants , "participants limit reached");
        require(!isRegistered(msg.sender), 'already registered');
        require(!isSelected(bet), 'this bet is alrady selected');
        require(betToken.balanceOf(msg.sender) >= betAmount, "don't have tokens to play");
        require(number <= 3, "the number must be minor than 4");
        require(bet <= limitOfParticipants*3, "the bet must be minor than number of participants * 3");

        participants[msg.sender] = Participant(msg.sender, number, bet);
        participantsList.push(msg.sender);
        _betWin = participants[msg.sender].number + _betWin;
        betToken.safeTransferFrom(msg.sender, address(this), betAmount);

        if (participantsList.length == limitOfParticipants) {
            for (uint256 i = 0; i < participantsList.length; ++i) {
                if (_betWin == participants[participantsList[i]].bet){
                    betToken.safeTransfer(participantsList[i], betToken.balanceOf(address(this)));
                    emit WinnerWas(participantsList[i], betToken.balanceOf(address(this)));
                }
            }
            _restartGame();
        }
    }

    function setNewParams(uint256 _limitOfParticipants, uint256 _betAmount, address _betToken) external onlyOwner {
        limitOfParticipants = _limitOfParticipants;
        betAmount = _betAmount;
        betToken = IERC20Upgradeable(_betToken);
        emit SetNewParams(limitOfParticipants, betAmount, address(betToken)); 
    }

    function isRegistered(address addr) view public returns (bool){
        return participants[addr].addr != address(0);
    }

    function isSelected(uint256 bet) view public returns (bool){
        for (uint256 i = 0; i < participantsList.length; ++i) {
            if (bet == participants[participantsList[i]].bet) {
                return true;
            }
        }
        return false;
    }

    function _restartGame() internal {
        for (uint256 i = 0; i < participantsList.length; ++i) {
            participants[participantsList[i]].addr = address(0);
        }
        delete participantsList;
        _betWin = 0;
    }
}
