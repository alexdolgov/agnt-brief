// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "hardhat-deploy/solc_0.7/proxy/Proxied.sol";

import "@chainlink/contracts/src/v0.7/ChainlinkClient.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../interfaces/ILayerZeroOracle.sol";
import "../interfaces/ILayerZeroUltraLightNodeV1.sol";
import "../arbitrum/interfaces/ArbSys.sol";

contract ChainlinkOracleClient is ILayerZeroOracle, ChainlinkClient, ReentrancyGuard, OwnableUpgradeable, Proxied {
    using SafeERC20 for IERC20;

    struct Job {
        address oracle;
        bytes32 id;
        uint fee;
        uint calledInBlock;
    }

    uint public calledInBlock;
    mapping(uint16 => Job) public jobs; // dstChainId => Job()
    uint16 public endpointId; // local lz endpointId
    ILayerZeroUltraLightNodeV1 public uln;
    mapping(address => bool) public approvedAddresses;
    mapping(uint16 => mapping(uint16 => uint)) public chainPriceLookup;
    mapping(uint16 => bytes) public deliveryAddressLookup;
    ArbSys public arbSys; // to retrieve Arbitrum L2 block number
    address public LINK; // the LINK token address on the local chain

    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";

    event Result(bytes32 requestId, bytes32 result);
    event WithdrawTokens(address token, address to, uint amount);
    event Withdraw(address to, uint amount);

    modifier onlyULN() {
        require(msg.sender == address(uln), "OracleClient: caller must be LayerZero.");
        _;
    }

    function initialize(address _linkAddress, uint16 _endpointId) public proxied initializer {
        __Ownable_init();

        setChainlinkToken(_linkAddress);
        LINK = _linkAddress;
        endpointId = _endpointId;
        approvedAddresses[msg.sender] = true;

        if (isArbitrumChain()) {
            arbSys = ArbSys(0x0000000000000000000000000000000000000064);
        }
    }

    // not doing 0 cost
    function getPrice(uint16 _destinationChainId, uint16 _outboundProofType) external view override returns (uint price) {
        price = chainPriceLookup[_outboundProofType][_destinationChainId];
        require(price > 0, "Chainlink Oracle: not supporting the (dstChain, libraryVersion)");
    }

    function isApproved(address _relayerAddress) public view override returns (bool) {
        return approvedAddresses[_relayerAddress];
    }

    function isArbitrumChain() public view returns (bool) {
        uint cid;
        assembly {
            cid := chainid()
        }
        return cid == 42161 || cid == 421611;
    }

    function getBlockForOracleJob() public view returns (uint) {
        if (isArbitrumChain()) {
            return arbSys.arbBlockNumber();
        }
        return block.number;
    }

    // only approved
    function updateHash(uint16 _remoteChainId, bytes32 _blockHash, uint _confirmations, bytes32 _data) external {
        require(approvedAddresses[msg.sender], "Oracle: caller must be approved");
        uln.updateHash(_remoteChainId, _blockHash, _confirmations, _data);
    }

    // pay to initiate oracle and specify the targetBlock to move the header for
    function notifyOracleOfBlock(uint16 _dstChainId, uint16 _outboundProofType, uint64 _outboundBlockConfirmations, uint targetBlockNum) external {
        require(targetBlockNum <= getBlockForOracleJob(), "target block number cannot be in the future");

        Job storage job = jobs[_dstChainId];
        require(IERC20(LINK).allowance(msg.sender, address(this)) >= job.fee, "sender requires more LINK allowance to perform call");

        // sender must pay this contract in LINK for the job being requested
        IERC20(LINK).transferFrom(msg.sender, address(this), job.fee);

        // instruct chainlink oracle to move the block header, for the target block
        sendOracleRequest(_dstChainId, _outboundProofType, _outboundBlockConfirmations, targetBlockNum, true);
    }

    // LayerZero will call this function to initiate the Chainlink oracle
    function notifyOracle(uint16 _dstChainId, uint16 _outboundProofType, uint64 _outboundBlockConfirmations) external override onlyULN {
        sendOracleRequest(_dstChainId, _outboundProofType, _outboundBlockConfirmations, getBlockForOracleJob(), false);
    }

    // function to handle building and sending the chainlink request for a target block
    function sendOracleRequest(uint16 _dstChainId, uint16 _outboundProofType, uint64 _outboundBlockConfirmations, uint targetBlockNum, bool _override) internal {
        Job storage job = jobs[_dstChainId];
        if (_override || job.calledInBlock < targetBlockNum) {
            Chainlink.Request memory req = buildChainlinkRequest(job.id, address(this), this.fulfillNotificationOfBlock.selector);
            // send this source sides endpointId. when cl delivers it on the remote,
            // it makes sense they use the variable named "remoteChainId" from that side.
            Chainlink.addUint(req, "remoteChainId", endpointId);
            Chainlink.addUint(req, "libraryVersion", uint(_outboundProofType));
            Chainlink.addBytes(req, "contractAddress", deliveryAddressLookup[_dstChainId]);
            Chainlink.addUint(req, "confirmations", _outboundBlockConfirmations);
            Chainlink.add(req, "blockNum", toHexString(targetBlockNum));

            sendChainlinkRequestTo(job.oracle, req, job.fee);
            job.calledInBlock = targetBlockNum;
        }
    }

    // chainlink callback function
    function fulfillNotificationOfBlock(bytes32 _requestId, bytes32 _result) public recordChainlinkFulfillment(_requestId) {
        emit Result(_requestId, _result);
    }

    // owner can approve a token spender
    function approveToken(address _token, address _spender, uint _amount) external onlyOwner {
        IERC20 token = IERC20(_token);
        token.safeApprove(_spender, _amount);
    }

    // owner can withdraw native
    function withdraw(address payable _to, uint _amount) external onlyOwner nonReentrant {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "OracleClient: failed to withdraw");
        emit Withdraw(_to, _amount);
    }

    // owner can set uln
    function setUln(address ulnAddress) external onlyOwner {
        uln = ILayerZeroUltraLightNodeV1(ulnAddress);
    }

    // owner can withdraw tokens
    function withdrawTokens(address _token, address _to, uint _amount) public onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
        emit WithdrawTokens(_token, _to, _amount);
    }

    // quoted fee refers to the fee the oracle clock
    function withdrawOracleQuotedFee(uint amount) external onlyOwner {
        uln.withdrawNative(1, address(this), address(this), amount);
    }

    // set/update chainlink jobid data
    function setJob(uint16 _chain, address _oracle, bytes32 _id, uint _fee) public onlyOwner {
        jobs[_chain] = Job(_oracle, _id, _fee, getBlockForOracleJob() - 1);
    }

    // store the dstChainId and delivery address
    function setDeliveryAddress(uint16 _dstChainId, address _deliveryAddress) public onlyOwner {
        deliveryAddressLookup[_dstChainId] = abi.encodePacked(_deliveryAddress);
    }

    function setPrice(uint16 _destinationChainId, uint16 _outboundProofType, uint _price) external onlyOwner {
        chainPriceLookup[_outboundProofType][_destinationChainId] = _price;
    }

    // approve a signing address
    function setApprovedAddress(address _oracleAddress, bool _approve) external onlyOwner {
        approvedAddresses[_oracleAddress] = _approve;
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function int2str(uint value) public pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT licence
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint temp = value;
        uint digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint value) public view returns (string memory) {
        if (value == 0) {
            return "0x0";
        }
        uint temp = value;
        uint length = 0;
        while (temp != 0) {
            length++;
            temp >>= 8;
        }
        return toHexString(value, length);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint value, uint length) internal view returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";

        for (uint i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
            value >>= 4;
        }

        if (buffer[2] == "0") {
            bytes memory bufferOdd = new bytes(buffer.length - 1);
            bufferOdd[0] = "0";
            bufferOdd[1] = "x";

            for (uint i = 3; i < buffer.length; i++) {
                bufferOdd[i - 1] = buffer[i];
            }

            require(value == 0, "Strings: hex length insufficient");
            return string(bufferOdd);
        }

        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    // endpointId
    function setEndpointId(uint16 _endpointId) external onlyOwner {
        endpointId = _endpointId;
    }

    // be able to receive ether
    fallback() external payable {}

    receive() external payable {}
}
