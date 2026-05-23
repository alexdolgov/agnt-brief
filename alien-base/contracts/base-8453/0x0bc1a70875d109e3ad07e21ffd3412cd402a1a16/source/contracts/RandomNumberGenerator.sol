// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IAlienbaseLottery.sol";
import "./interfaces/IRandomNumberGenerator.sol";

contract RandomNumberGenerator is IRandomNumberGenerator, Ownable {
    using SafeERC20 for IERC20;

    address public alienbaseLottery;
    uint256 public latestRequestId;
    uint32 public randomResult;
    uint256 public latestLotteryId;

    mapping(address => bool) public trustedOperator;

    event RequestRandomNumber(uint seed);

    /**
     * @notice Constructor
     * @dev RandomNumberGenerator must be deployed before the lottery.
     * Once the lottery contract is deployed, setLotteryAddress must be called.
     */
    constructor() Ownable(msg.sender) {}

    /**
     * @notice Request randomness from a user-provided seed
     * @param _seed: seed provided by the Alienbase lottery
     */
    function getRandomNumber(uint256 _seed) external onlyAlienbaseLottery {
        require(msg.sender == alienbaseLottery, "Only AlienbaseLottery");

        // latestRequestId = requestRandomness(keyHash, fee, _seed);
        latestRequestId = _seed;
        emit RequestRandomNumber(_seed);
    }

    /**
     * @notice Set the address for the AlienbaseLottery
     * @param _alienbaseLottery: address of the Alienbase lottery
     */
    function setLotteryAddress(address _alienbaseLottery) external onlyOwner {
        alienbaseLottery = _alienbaseLottery;
    }

    /**
     * @notice It allows the admin to withdraw tokens sent to the contract
     * @param _tokenAddress: the address of the token to withdraw
     * @param _tokenAmount: the number of token amount to withdraw
     * @dev Only callable by owner.
     */
    function withdrawTokens(
        address _tokenAddress,
        uint256 _tokenAmount
    ) external onlyOwner {
        IERC20(_tokenAddress).safeTransfer(address(msg.sender), _tokenAmount);
    }

    /**
     * @notice It allows the admin to enable or disable oeprator
     * @param _operatorAddress: the address of the operartor
     * @param _enabled: enabled true or false
     * @dev Only callable by owner.
     */
    function enableOperator(
        address _operatorAddress,
        bool _enabled
    ) external onlyOwner {
        trustedOperator[_operatorAddress] = _enabled;
    }

    /**
     * @notice View latestLotteryId
     */
    function viewLatestLotteryId() external view returns (uint256) {
        return latestLotteryId;
    }

    /**
     * @notice View random result
     */
    function viewRandomResult() external view returns (uint32) {
        return randomResult;
    }

    modifier onlyAlienbaseLottery() {
        require(msg.sender == alienbaseLottery, "alienbaseLottery only");
        _;
    }

    modifier onlyOperator() {
        require(trustedOperator[msg.sender], "operator only");
        _;
    }

    /**
     * @notice Callback function used by ChainLink's VRF Coordinator
     */
    function fulfillRandomness(
        uint256 requestId,
        uint256 randomness
    ) external onlyOperator {
        require(latestRequestId == requestId, "Wrong requestId");
        randomResult = uint32(1000000 + (randomness % 1000000));
        latestLotteryId = IAlienbaseLottery(alienbaseLottery)
            .viewCurrentLotteryId();
    }
}
