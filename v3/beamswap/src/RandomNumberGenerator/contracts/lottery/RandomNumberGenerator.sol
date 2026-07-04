// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.19;

import "./Randomness.sol";
import {RandomnessConsumer} from "./RandomnessConsumer.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IBeamswapLottery.sol";

contract RandomNumberGenerator is RandomnessConsumer {
    using SafeERC20 for IERC20;
    // The Randomness Precompile Interface
    Randomness public constant randomness =
        Randomness(0x0000000000000000000000000000000000000809);

    uint256 public gasPrice = 250 gwei; //moonbase 5 , moonbeam 150
    address public operator;
    address public beamSwapLottery;
    uint256 public latestLotteryId;

    // Variables required for randomness requests
    uint256 public requiredDeposit = randomness.requiredDeposit();
    uint64 public FULFILLMENT_GAS_LIMIT = 100000;
    // The fee can be set to any value as long as it is enough to cover
    // the fulfillment costs. Any leftover fees will be refunded to the
    // refund address specified in the getRandomNumber function below.
    // 150 Gwei should be sufficient for all networks.
    // For Moonbase Alpha and Moonriver, you can specify 5 Gwei
    uint256 public MIN_FEE = FULFILLMENT_GAS_LIMIT * gasPrice;
    uint32 public VRF_BLOCKS_DELAY = MIN_VRF_BLOCKS_DELAY;
    // bytes32 public SALT_PREFIX = "BEAMSWAP_LOTTERY";

    // Storage variables for the current request
    uint256 public latestRequestId;
    uint32 public randomResult;

    constructor() payable RandomnessConsumer() {
        // Because this contract can only perform 1 randomResult request at a time,
        // We only need to have 1 required deposit
        operator = msg.sender;
        require(msg.value >= requiredDeposit);
    }

    modifier OperatorOrLottery() {
        require(
            msg.sender == operator || msg.sender == beamSwapLottery,
            "Only operator or lottery can call this function"
        );
        _;
    }

    receive() external payable {}

    function getRandomNumber(bytes32 _seed) public payable OperatorOrLottery {
        // Make sure that the value sent is enough
        require(msg.value >= MIN_FEE);
        // Request local VRF randomness
        latestRequestId = randomness.requestLocalVRFRandomWords(
            operator, // Refund address
            msg.value, // Fulfillment fee
            FULFILLMENT_GAS_LIMIT, // Gas limit for the fulfillment
            _seed, // A salt to generate unique results
            1, // Number of randomResult words
            VRF_BLOCKS_DELAY // Delay before request can be fulfilled
        );
    }

    function fulfillRequest() public {
        randomness.fulfillRequest(latestRequestId);
    }

    function fulfillRandomWords(
        uint256, // latestRequestId
        uint256[] memory randomWords
    ) internal override {
        // Save the randomness results
        randomResult = uint32(1000000 + (randomWords[0] % 1000000));
        latestLotteryId = IBeamswapLottery(beamSwapLottery)
            .viewCurrentLotteryId();
    }

    function setGasPrice(uint256 _newGasPrice) public {
        require(msg.sender == operator);
        gasPrice = _newGasPrice;
        MIN_FEE = FULFILLMENT_GAS_LIMIT * gasPrice;
    }

    function setOperator(address _newOperator) public {
        require(msg.sender == operator);
        operator = _newOperator;
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

    function setBeamSwapLottery(address _beamSwapLottery) public {
        require(msg.sender == operator);
        beamSwapLottery = _beamSwapLottery;
    }

    function setFulfillmentGasLimit(uint64 _fulfillmentGasLimit) public {
        require(msg.sender == operator);
        FULFILLMENT_GAS_LIMIT = _fulfillmentGasLimit;
        MIN_FEE = FULFILLMENT_GAS_LIMIT * gasPrice;
    }

    function setMinVRFBlocksDelay(uint32 _minVRFBlocksDelay) public {
        require(msg.sender == operator);
        VRF_BLOCKS_DELAY = _minVRFBlocksDelay;
    }

    /// @notice withdraw contracts funds in case of emergency
    /// @param _amount: amount to withdraw
    /// @param _beneficiary: address to receive the funds
    /// @param isNative: true if the token is native, false otherwise
    /// @param rewardToken: token to withdraw
    function withdrawRewardsEmergency(
        uint256 _amount,
        address _beneficiary,
        bool isNative,
        IERC20 rewardToken
    ) external {
        require(msg.sender == operator);
        if (!isNative) {
            rewardToken.safeTransfer(_beneficiary, _amount);
        } else {
            (bool sent, ) = _beneficiary.call{value: _amount}("");
            require(sent, "emergency reward withdraw: failed to send");
        }
    }
}
