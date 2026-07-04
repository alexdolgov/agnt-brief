// SPDX-License-Identifier: MIT

pragma solidity >0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract GasMovr is Ownable, Pausable {
    /* 
        Variables
    */
    mapping(uint256 => ChainData) public minAndMaxForChains;
    mapping(bytes32 => bool) public processedHashes;
    mapping(address => bool) public senders;

    struct ChainData {
        uint256 chainId;
        bool isEnabled;
        uint256 minAmount;
        uint256 maxAmount;
    }

    /* 
        Events
    */
    event Deposit(
        address indexed destinationReceiver,
        uint256 amount,
        uint256 indexed destinationChainId
    );

    event Withdrawal(address indexed receiver, uint256 amount);

    event Donation(address sender, uint256 amount);

    event Send(
        address receiver,
        uint256 amount,
        bytes32 srcChainTxHash
    );

    event GrantSender(address sender);
    event RevokeSender(address sender);

    modifier onlySender() {
        require(senders[msg.sender], "Sender role required");
        _;
    }

    constructor() {
        _grantSenderRole(msg.sender);
    }

    receive() external payable {
        emit Donation(msg.sender, msg.value);
    }

    function depositNativeToken(uint256 destinationChainId, address _to)
        public
        payable
        whenNotPaused
    {
        require(
            minAndMaxForChains[destinationChainId].isEnabled,
            "Chain is currently disabled"
        );
        require(
            msg.value >= minAndMaxForChains[destinationChainId].minAmount,
            "Please send more tokens"
        );
        require(
            msg.value <= minAndMaxForChains[destinationChainId].maxAmount,
            "Surpasses max transfer amount"
        );

        emit Deposit(_to, msg.value, destinationChainId);
    }

    function withdrawBalance() public onlyOwner {
        uint256 amount = address(this).balance;

        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Failed to send Ether");

        emit Withdrawal(msg.sender, amount);
    }

    function setIsEnabled(uint256 chainId, bool _isEnabled)
        public
        onlyOwner
        returns (bool)
    {
        minAndMaxForChains[chainId].isEnabled = _isEnabled;
        return minAndMaxForChains[chainId].isEnabled;
    }

    function setMinAmount(uint256 chainId, uint256 _minAmount)
        public
        onlyOwner
        returns (uint256)
    {
        minAndMaxForChains[chainId].minAmount = _minAmount;
        return minAndMaxForChains[chainId].minAmount;
    }

    function setMaxAmount(uint256 chainId, uint256 _maxAmount)
        public
        onlyOwner
        returns (uint256)
    {
        minAndMaxForChains[chainId].maxAmount = _maxAmount;
        return minAndMaxForChains[chainId].maxAmount;
    }

    function setPause() public onlyOwner returns (bool) {
        _pause();
        return paused();
    }

    function setUnPause() public onlyOwner returns (bool) {
        _unpause();
        return paused();
    }

    function addRoutes(ChainData[] calldata _routes) external onlyOwner {
        for (uint256 i = 0; i < _routes.length; i++) {
            minAndMaxForChains[_routes[i].chainId] = _routes[i];
        }
    }

    function getChainData(uint256 chainId)
        public
        view
        returns (ChainData memory)
    {
        return (minAndMaxForChains[chainId]);
    }

    function batchSendNativeToken(
        address payable[] memory receivers,
        uint256[] memory amounts,
        bytes32[] memory srcChainTxHashes,
        uint256 perUserGasAmount
    ) public onlySender {
        require(
            receivers.length == amounts.length &&
                receivers.length == srcChainTxHashes.length,
            "Input length mismatch"
        );

        uint256 chainId;
        uint256 gasPrice;
        assembly {
            chainId := chainid()
            gasPrice := gasprice()
        }

        for (uint256 i = 0; i < receivers.length; i++) {
            _sendNativeToken(
                receivers[i],
                amounts[i],
                srcChainTxHashes[i],
                minAndMaxForChains[chainId].maxAmount,
                gasPrice * perUserGasAmount
            );
        }
    }

    function sendNativeToken(
        address payable receiver,
        uint256 amount,
        bytes32 srcChainTxHash,
        uint256 perUserGasAmount
    ) public onlySender {
        uint256 chainId;
        uint256 gasPrice;
        assembly {
            chainId := chainid()
            gasPrice := gasprice()
        }

        _sendNativeToken(
            receiver,
            amount,
            srcChainTxHash,
            minAndMaxForChains[chainId].maxAmount,
            gasPrice * perUserGasAmount
        );
    }

    function _sendNativeToken(
        address payable receiver,
        uint256 amount,
        bytes32 srcChainTxHash,
        uint256 maxAmount,
        uint256 gasFees
    ) private {
        if (processedHashes[srcChainTxHash]) return;
        processedHashes[srcChainTxHash] = true;

        require(
            amount <= maxAmount,
            "Amount more than max"
        );

        uint256 sendAmount = amount - gasFees;

        emit Send(receiver, sendAmount, srcChainTxHash);

        (bool success, ) = receiver.call{value: sendAmount, gas: 5000}("");
        require(success, "Failed to send Ether");
    }

    function grantSenderRole(address sender) public onlyOwner {
        _grantSenderRole(sender);
    }

    function revokeSenderRole(address sender) public onlyOwner {
        _revokeSenderRole(sender);
    }

    function _grantSenderRole(address sender) private {
        senders[sender] = true;
        emit GrantSender(sender);
    }

    function _revokeSenderRole(address sender) private {
        senders[sender] = false;
        emit RevokeSender(sender);
    }
}
