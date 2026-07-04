// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@chainlink/contracts/src/v0.8/interfaces/LinkTokenInterface.sol";
import "@chainlink/contracts/src/v0.8/interfaces/VRFCoordinatorV2Interface.sol";
import "@chainlink/contracts/src/v0.8/VRFConsumerBaseV2.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IPandoPot.sol";

contract RandomNumberGenerator is VRFConsumerBaseV2, Ownable {
    VRFCoordinatorV2Interface COORDINATOR;
    LinkTokenInterface LINK_TOKEN;

    // see https://docs.chain.link/docs/vrf-contracts/#configurations
    address vrfCoordinator = 0xc587d9053cd1118f25F645F9E08BB98c9712A4EE;
    address link_token_contract = 0x404460C6A5EdE2D891e8297795264fDe62ADBB75;
    bytes32 keyHash = 0x17cd473250a9a479dc7f234c64332ed4bc8af9e8ded7556aa6e66d83da49f470;

    // A reasonable default is 100000, but this value could be different on other networks.
    uint32 callbackGasLimit = 2500000;
    uint16 requestConfirmations = 3;
    uint32 public numWords = 3;

    uint256 constant PRECISION = 1e20;

    // Storage parameters

    uint256 public s_requestId;
    uint64 private s_subscriptionId;
    IPandoPot public pandoPot;
    address public operator;
    uint256 public lastUpdateResult;

    mapping(uint256 => uint256[]) public numbers;
    uint256[] public curNumbers;

    bool public lockFullFill = true;
    uint256 public currentRoundId;

    constructor(address _pandoPot) VRFConsumerBaseV2(vrfCoordinator) {
        pandoPot = IPandoPot(_pandoPot);
        COORDINATOR = VRFCoordinatorV2Interface(vrfCoordinator);
        LINK_TOKEN = LinkTokenInterface(link_token_contract);
        //Create a new subscription when you deploy the contract.
        createNewSubscription();
        curNumbers = [0, 0, 0];
        operator = msg.sender;
        lockFullFill = false;
    }

    modifier onlyOperator {
        require(msg.sender == operator, 'RandomNumberGenerator: !operator');
        _;
    }

    /* ========== EXTERNAL FUNCTIONS ========== */
    function getNumber(uint256 _roundId) external view returns(uint256[] memory) {
        if (_roundId == currentRoundId) {
            return curNumbers;
        }
        return (numbers[_roundId]);
    }

    /* ========== INTERNAL FUNCTIONS ========== */
    function fulfillRandomWords(
        uint256, /* requestId */
        uint256[] memory randomWords
    ) internal override {
        curNumbers = randomWords;
        lastUpdateResult = block.timestamp;
        lockFullFill = false;
    }

    function setLockFullFill(bool status) external onlyOperator{
        lockFullFill = status;
    }

    // Create a new subscription when the contract is initially deployed.
    function createNewSubscription() internal {
        // Create a subscription with a new subscription ID.
        address[] memory consumers = new address[](1);
        consumers[0] = address(this);
        s_subscriptionId = COORDINATOR.createSubscription();
        // Add this contract as a consumer of its own subscription.
        COORDINATOR.addConsumer(s_subscriptionId, consumers[0]);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */
    // Assumes the subscription is funded sufficiently.
    function requestRandomWords() external onlyOperator {
        // Will revert if subscription is not set and funded.
        require(!lockFullFill, "RNG: Waiting for full fill!");
        require(block.timestamp >= lastUpdateResult + pandoPot.getRoundDuration(), 'RNG: < roundDuration');
        s_requestId = COORDINATOR.requestRandomWords(
            keyHash,
            s_subscriptionId,
            requestConfirmations,
            callbackGasLimit,
            numWords
        );
        numbers[currentRoundId] = curNumbers;
        pandoPot.updatePandoPot();
        pandoPot.finishRound();
        currentRoundId++;
        lockFullFill = true;
    }

    // Assumes this contract owns link.
    // 1000000000000000000 = 1 LINK
    function topUpSubscription(uint256 amount) external onlyOwner {
        LINK_TOKEN.transferAndCall(address(COORDINATOR), amount, abi.encode(s_subscriptionId));
    }

    function cancelSubscription(address receivingWallet) external onlyOwner {
        // Cancel the subscription and send the remaining LINK to a wallet address.
        COORDINATOR.cancelSubscription(s_subscriptionId, receivingWallet);
        s_subscriptionId = 0;
    }

    // Transfer this contract's funds to an address.
    // 1000000000000000000 = 1 LINK
    function withdraw(uint256 amount, address to) external onlyOwner {
        LINK_TOKEN.transfer(to, amount);
    }

    function changePandoPot(address _pandoPot) external onlyOwner {
        address _oldPandoPot = address(pandoPot);
        pandoPot = IPandoPot(_pandoPot);
        emit PandoPotChanged(_oldPandoPot, _pandoPot);
    }

    function changeRoundId(uint256 _roundId) external onlyOwner {
        require(currentRoundId > _roundId, 'RNG: cur < roundID');
        currentRoundId = _roundId;
    }

    function setOperator(address _newOperator) external onlyOwner {
        address _oldOperator = operator;
        operator = _newOperator;
        emit OperatorChanged(_oldOperator, _newOperator);
    }

    event OperatorChanged(address oldOperator, address newOperator);
    event PandoPotChanged(address oldPandoPot, address newPandoPot);
}