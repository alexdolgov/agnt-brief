// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../core/interfaces/IOperators.sol";

contract VelaMission is ReentrancyGuard {
    address public velaTokenAddress;
    IOperators public operators;

    struct MissionPrice {
        uint256 missionId;
        uint256 missionPrice;
    }

    mapping(uint256 => uint256) public missionPrices; //missionId => missionPrice
    mapping(address => mapping(uint256 => uint256)) public userMissionAmount;

    event MissionPurchased(address indexed account, uint256 missionId);

    modifier onlyOperator(uint256 level) {
        require(operators.getOperatorLevel(msg.sender) >= level, "invalid operator");
        _;
    }

    constructor(address _velaTokenAddress, address _operators) {
        require(_velaTokenAddress != address(0), "Invalid Vela token address");
        require(_operators != address(0), "Invalid operators address");
        velaTokenAddress = _velaTokenAddress;
        operators = IOperators(_operators);
    }

    function purchaseMission(uint256 _missionId) public nonReentrant {
        require(velaTokenAddress != address(0), "Vela token address not set");
        uint256 missionPrice = missionPrices[_missionId];

        if (missionPrice > 0) {
            bool success = IERC20(velaTokenAddress).transferFrom(msg.sender, address(this), missionPrice);
            require(success, "Failed to transfer Vela tokens");
        }

        userMissionAmount[msg.sender][_missionId]++;
        emit MissionPurchased(msg.sender, _missionId);
    }

    function setMissionPrices(MissionPrice[] calldata _missionPrices) external onlyOperator(3) {
        uint256 length = _missionPrices.length;
        for (uint256 i; i < length; ) {
            missionPrices[_missionPrices[i].missionId] = _missionPrices[i].missionPrice;
            unchecked {
                ++i;
            }
        }
    }

    function getUserMissionAmount(address _account, uint256 _missionId) external view returns (uint256) {
        return userMissionAmount[_account][_missionId];
    }

    function withdrawAllVela(address _to) external onlyOperator(3) nonReentrant {
        require(_to != address(0), "Invalid address");
        require(velaTokenAddress != address(0), "Vela token address not set");

        uint256 balance = IERC20(velaTokenAddress).balanceOf(address(this));
        require(balance > 0, "No Vela tokens to transfer");

        bool success = IERC20(velaTokenAddress).transfer(_to, balance);
        require(success, "Failed to transfer Vela tokens");
    }
}
