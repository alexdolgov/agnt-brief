// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ICVPositions} from "./interfaces/ICVPositions.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMarket} from "./interfaces/IMarket.sol";

/// @title CVPositions
/// @notice ERC1155 position tokens minted only by CentralVault; 1:1 backed by Seer outcome ERC20s in escrow.
contract CVPositions is ICVPositions {
    address public immutable centralVault;

    mapping(uint256 id => IERC20) internal _underlying;
    mapping(uint256 id => uint256) internal _totalSupply;
    mapping(uint256 id => mapping(address account => uint256)) internal _balances;
    mapping(address account => mapping(address operator => bool)) internal _operatorApprovals;

    error NotVault();
    error ZeroAddress();
    error InsufficientBalance();
    error NotApproved();
    error TransferToZero();
    error ArrayLengthMismatch();
    error UnderlyingTransferFailed();

    modifier onlyVault() {
        if (msg.sender != centralVault) revert NotVault();
        _;
    }

    constructor(address centralVault_) {
        if (centralVault_ == address(0)) revert ZeroAddress();
        centralVault = centralVault_;
    }

    /// @inheritdoc ICVPositions
    function tokenId(IMarket market, uint256 outcomeIndex) public pure returns (uint256) {
        return uint256(keccak256(abi.encode(market, outcomeIndex)));
    }

    /// @inheritdoc ICVPositions
    function totalSupply(uint256 id) external view returns (uint256) {
        return _totalSupply[id];
    }

    /// @inheritdoc ICVPositions
    function balanceOf(address account, uint256 id) external view returns (uint256) {
        return _balances[id][account];
    }

    /// @inheritdoc ICVPositions
    function isApprovedForAll(address account, address operator) external view returns (bool) {
        return _operatorApprovals[account][operator];
    }

    /// @inheritdoc ICVPositions
    function setApprovalForAll(address operator, bool approved) external {
        _operatorApprovals[msg.sender][operator] = approved;
        emit ApprovalForAll(msg.sender, operator, approved);
    }

    /// @inheritdoc ICVPositions
    function safeTransferFrom(address from, address to, uint256 id, uint256 value, bytes calldata) external {
        if (to == address(0)) revert TransferToZero();
        if (from != msg.sender && !_operatorApprovals[from][msg.sender]) revert NotApproved();
        _transfer(from, to, id, value);
        emit TransferSingle(msg.sender, from, to, id, value);
    }

    /// @inheritdoc ICVPositions
    function mint(IMarket market, uint256 outcomeIndex, address to, uint256 amount) external onlyVault {
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) return;

        uint256 id = tokenId(market, outcomeIndex);
        IERC20 underlying = _underlying[id];
        if (address(underlying) == address(0)) {
            (IERC20 token,) = market.wrappedOutcome(outcomeIndex);
            underlying = token;
            _underlying[id] = underlying;
        }

        if (!underlying.transferFrom(msg.sender, address(this), amount)) revert UnderlyingTransferFailed();

        _balances[id][to] += amount;
        _totalSupply[id] += amount;
        emit TransferSingle(msg.sender, address(0), to, id, amount);
    }

    /// @inheritdoc ICVPositions
    function releasePositions(IMarket market, uint256 outcomeIndex, address from, uint256 amount)
        external
        onlyVault
    {
        if (amount == 0) return;

        uint256 id = tokenId(market, outcomeIndex);
        if (_balances[id][from] < amount) revert InsufficientBalance();

        _balances[id][from] -= amount;
        _totalSupply[id] -= amount;
        emit TransferSingle(msg.sender, from, address(0), id, amount);

        IERC20 underlying = _underlying[id];
        if (!underlying.transfer(centralVault, amount)) revert UnderlyingTransferFailed();
    }

    function _transfer(address from, address to, uint256 id, uint256 value) internal {
        if (_balances[id][from] < value) revert InsufficientBalance();
        _balances[id][from] -= value;
        _balances[id][to] += value;
    }
}
