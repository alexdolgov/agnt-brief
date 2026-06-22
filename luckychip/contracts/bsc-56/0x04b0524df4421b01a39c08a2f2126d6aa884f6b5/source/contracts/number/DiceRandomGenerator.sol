// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/LinkTokenInterface.sol";
import "@chainlink/contracts/src/v0.8/interfaces/VRFCoordinatorV2Interface.sol";
import "@chainlink/contracts/src/v0.8/dev/VRFConsumerBaseV2.sol";
import "../interfaces/IBEP20.sol";
import "../libraries/SafeBEP20.sol";
import "../interfaces/IRandomGenerator.sol";
import "../interfaces/IDice.sol";

contract DiceRandomGenerator is VRFConsumerBaseV2, IRandomGenerator, Ownable {
    using SafeBEP20 for IBEP20;

    // COORDINATOR is a reference to the VRFCoordinatorV2 deployed contract.
    VRFCoordinatorV2Interface COORDINATOR;
    // LINKTOKEN is a reference to the LINK token contract.
    LinkTokenInterface LINKTOKEN;

    struct RequestConfig {
        uint64 subId;
        uint32 callbackGasLimit;
        uint16 requestConfirmations;
        uint32 numWords;
        bytes32 keyHash;
    }
    RequestConfig public s_requestConfig;
    IDice public dice;
    mapping(uint256 => bool) public isPublicBet;

    /**
     * @notice Constructor
     * @dev RandomGenerator must be deployed before the lottery.
     * Once the lottery contract is deployed, setLotteryAddress must be called.
     * https://docs.chain.link/docs/vrf-contracts/
     * @param _vrfCoordinator: address of the VRF coordinator
     * @param _linkToken: address of the LINK token
     */
    constructor(address _vrfCoordinator, address _linkToken, uint64 _subId, bytes32 _keyHash) VRFConsumerBaseV2(_vrfCoordinator) {
        COORDINATOR = VRFCoordinatorV2Interface(_vrfCoordinator);
        LINKTOKEN = LinkTokenInterface(_linkToken);
        s_requestConfig = RequestConfig({
            // Unset initially - will be set by subscribe() call
            subId: _subId,

            // Reasonable default - could be different across different chains.
            callbackGasLimit: 1000000,

            // Reasonable default. Note that this should be set to at least
            // the minimumRequestConfirmations that is returned from VRFCoordinatorV2.getConfig()
            requestConfirmations: 3,

            // The amount of words to request. Cannot exceed VRFCoordinatorV2.MAX_NUM_WORDS.
            numWords: 1,

            // The "gas lane" to use. See docs for available gas lanes. This one is
            // for Rinkeby.
            keyHash: _keyHash
        });
    }

    /**
     * @notice reset key hash
     */
    function setKeyHash(bytes32 _keyHash) external onlyOwner{
        s_requestConfig.keyHash = _keyHash;
    }

    /**
     * @notice Request randomness
     */
    function getRandomNumber() external override returns (uint256) {
        require(msg.sender == address(dice), "Only dice");
        require(s_requestConfig.keyHash != bytes32(0), "Must have valid key hash");
        RequestConfig memory rc = s_requestConfig;
            // Will revert if subscription is not set and funded.
        uint256 requestId = COORDINATOR.requestRandomWords(
            rc.keyHash,
            rc.subId,
            rc.requestConfirmations,
            rc.callbackGasLimit,
            rc.numWords
        );
        isPublicBet[requestId] = true;
        return requestId;
    }

        /**
     * @notice Request randomness
     */
    function getPrivateRandomNumber() external override returns (uint256) {
        require(msg.sender == address(dice), "Only dice");
        require(s_requestConfig.keyHash != bytes32(0), "Must have valid key hash");
        RequestConfig memory rc = s_requestConfig;
            // Will revert if subscription is not set and funded.
        return COORDINATOR.requestRandomWords(
            rc.keyHash,
            rc.subId,
            rc.requestConfirmations,
            rc.callbackGasLimit,
            rc.numWords
        );
    }

    /**
     * @notice Set the address for the LuckyNumber
     * @param _diceAddr: address of the LuckyNumber
     */
    function setDice(address _diceAddr) external onlyOwner {
        dice = IDice(_diceAddr);
    }

    function _safeTransferBNB(address to, uint256 value) internal {
        (bool success, ) = to.call{gas: 23000, value: value}("");
        require(success, 'BNB_TRANSFER_FAILED');
    }

    // Owner can withdraw BNB funds
    function withdrawFunds(address payable beneficiary, uint withdrawAmount) external onlyOwner {
        require(withdrawAmount <= address(this).balance, "Withdrawal exceeds limit");
        _safeTransferBNB(beneficiary, withdrawAmount);
    }

    /**
     * @notice It allows the admin to withdraw tokens sent to the contract
     * @param _tokenAddress: the address of the token to withdraw
     * @param _tokenAmount: the number of token amount to withdraw
     * @dev Only callable by owner.
     */
    function withdrawTokens(address _tokenAddress, uint256 _tokenAmount) external onlyOwner {
        IBEP20(_tokenAddress).safeTransfer(address(msg.sender), _tokenAmount);
    }

    /**
     * @notice Callback function used by ChainLink's VRF Coordinator
     */
    function fulfillRandomWords(uint256 requestId, uint256[] memory randomWords) internal override {
        if(isPublicBet[requestId]){
            dice.sendSecret(requestId, randomWords[0]);
        }else{
            dice.settlePrivateBet(requestId, randomWords[0]);
        }
    }
}