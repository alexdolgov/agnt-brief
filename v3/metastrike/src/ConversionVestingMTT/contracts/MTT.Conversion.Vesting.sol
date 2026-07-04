// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "hardhat/console.sol";

contract ConversionVestingMTT is Ownable, ReentrancyGuard {
    address public mttToken;
    address public conversionContract;

    uint256 public period1 = 30 days;
    uint256 public period2 = 90 days;

    uint256 public totalVestedAmount;
    uint256 public totalClaimedAmount;

    struct Vesting {
        uint256 startTime;
        uint256 vestedAmountP1;
        uint256 claimedAmountP1;
        uint256 vestedAmountP2;
        uint256 claimedAmountP2;
    }

    mapping(address => uint256) startTimes;
    mapping(address => Vesting[]) public userVesting;

    event AllocateMtt(
        address wallet,
        uint256 baseMttAmount,
        uint256 bonusMttAmount
    );
    event ClaimMtt(address wallet, uint256 index, uint256 claimedAmount);

    constructor() Ownable(msg.sender) {}

    function allocateMTT(
        address _wallet,
        uint256 _vestedAmountP1,
        uint256 _vestedAmountP2
    ) external nonReentrant {
        require(
            _msgSender() == address(conversionContract) || _msgSender() == owner(),
            "Access forbidden"
        );

        Vesting memory vesting = Vesting({
            startTime: block.timestamp,
            vestedAmountP1: _vestedAmountP1,
            vestedAmountP2: _vestedAmountP2,
            claimedAmountP1: 0,
            claimedAmountP2: 0
        });

        userVesting[_wallet].push(vesting);

        totalVestedAmount += (_vestedAmountP1 + _vestedAmountP2);

        emit AllocateMtt(_wallet, _vestedAmountP1, _vestedAmountP2);
    }

    function getUserVestings(
        address _user
    ) public view returns (Vesting[] memory vestings) {
        return userVesting[_user];
    }

    function claimMTT(uint256 _index) external nonReentrant {
        
        require(userVesting[_msgSender()].length > 0, "Nothing vested");
        require(_index < userVesting[_msgSender()].length, "invalid index");

        uint256 availableAmount = 0;

        if (
            block.timestamp >=
            userVesting[_msgSender()][_index].startTime + period1 &&
            userVesting[_msgSender()][_index].vestedAmountP1 -
                userVesting[_msgSender()][_index].claimedAmountP1 >
            0
        ) {
            availableAmount += (userVesting[_msgSender()][_index]
                .vestedAmountP1 -
                userVesting[_msgSender()][_index].claimedAmountP1);
            userVesting[_msgSender()][_index].claimedAmountP1 = userVesting[
                _msgSender()
            ][_index].vestedAmountP1;
        }
        if (
            block.timestamp >=
            userVesting[_msgSender()][_index].startTime + period2 &&
            userVesting[_msgSender()][_index].vestedAmountP2 -
                userVesting[_msgSender()][_index].claimedAmountP2 >
            0
        ) {
            availableAmount += (userVesting[_msgSender()][_index]
                .vestedAmountP2 -
                userVesting[_msgSender()][_index].claimedAmountP2);
            userVesting[_msgSender()][_index].claimedAmountP2 = userVesting[
                _msgSender()
            ][_index].vestedAmountP2;
        }

        console.log("availableAmount", availableAmount);

        require(availableAmount > 0, "Nothing to claim");
        require(mttToken != address(0), "MTT token must be set");

        IERC20(mttToken).transfer(_msgSender(), availableAmount);

        totalClaimedAmount += availableAmount;

        emit ClaimMtt(_msgSender(), _index, availableAmount);
    }

    function setConversionContract(address _conversionContract) public onlyOwner {
        conversionContract = _conversionContract;
    }

    function setMttToken(address _mttToken) public onlyOwner {
        require(_mttToken != address(0), "invalid address");
        mttToken = _mttToken;
    }

    function setPeriods(uint256 _period1, uint256 _period2) public onlyOwner {
        require(_period1 < _period2, "invalid periods");
        period1 = _period1;
        period2 = _period2;
    }
}
