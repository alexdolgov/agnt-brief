// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC1155} from "solmate/tokens/ERC1155.sol";
import {IParimutuelPositions} from "./interfaces/IParimutuelPositions.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMarket} from "./interfaces/IMarket.sol";

/// @title ParimutuelPositions
/// @notice ERC1155 position tokens minted only by ParimutuelVault; 1:1 backed by Seer outcome ERC20s in escrow.
/// @dev `entryDeadline` scopes positions so the same Seer market with different betting windows yields distinct token ids.
contract ParimutuelPositions is ERC1155, IParimutuelPositions {
    address public immutable parimutuelVault;

    mapping(uint256 id => IERC20) internal _underlying;
    mapping(uint256 id => uint256) internal _totalSupply;

    error NotVault();
    error ZeroAddress();
    error InsufficientBalance();
    error UnderlyingTransferFailed();

    modifier onlyVault() {
        if (msg.sender != parimutuelVault) revert NotVault();
        _;
    }

    constructor(address parimutuelVault_) {
        if (parimutuelVault_ == address(0)) revert ZeroAddress();
        parimutuelVault = parimutuelVault_;
    }

    /// @inheritdoc IParimutuelPositions
    function tokenId(IMarket market, uint256 outcomeIndex, uint32 entryDeadline) public pure returns (uint256) {
        return uint256(keccak256(abi.encode(market, outcomeIndex, entryDeadline)));
    }

    /// @inheritdoc IParimutuelPositions
    function totalSupply(uint256 id) external view returns (uint256) {
        return _totalSupply[id];
    }

    /// @inheritdoc IParimutuelPositions
    function mint(IMarket market, uint256 outcomeIndex, uint32 entryDeadline, address to, uint256 amount)
        external
        onlyVault
    {
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) return;

        uint256 id = tokenId(market, outcomeIndex, entryDeadline);
        IERC20 underlying = _underlying[id];
        if (address(underlying) == address(0)) {
            (IERC20 token,) = market.wrappedOutcome(outcomeIndex);
            underlying = token;
            _underlying[id] = underlying;
        }

        if (!underlying.transferFrom(msg.sender, address(this), amount)) revert UnderlyingTransferFailed();

        _totalSupply[id] += amount;
        _mint(to, id, amount, "");
    }

    /// @inheritdoc IParimutuelPositions
    function releasePositions(IMarket market, uint256 outcomeIndex, uint32 entryDeadline, address from, uint256 amount)
        external
        onlyVault
    {
        if (amount == 0) return;

        uint256 id = tokenId(market, outcomeIndex, entryDeadline);
        if (balanceOf[from][id] < amount) revert InsufficientBalance();

        _totalSupply[id] -= amount;
        _burn(from, id, amount);

        IERC20 underlying = _underlying[id];
        if (!underlying.transfer(parimutuelVault, amount)) revert UnderlyingTransferFailed();
    }

    function uri(uint256) public pure override returns (string memory) {
        return "";
    }
}
