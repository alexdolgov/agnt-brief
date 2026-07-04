// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

/// @dev Minimal interface for VeHemi queries used by the adapter.
interface IVeHemiAdapter {
    function balanceOf(address account) external view returns (uint256);
    function totalVeHemiSupply() external view returns (uint256);
    function voteDelegation() external view returns (address);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
}

/// @dev Minimal interface for VeHemiVoteDelegation functions used by the adapter.
interface IVoteDelegation {
    struct Delegation {
        address delegatee;
        uint48 end;
        uint96 bias;
        uint96 amount;
        uint64 slope;
    }

    function getVotes(address account) external view returns (uint256);
    function getPastVotes(address account, uint256 timestamp) external view returns (uint256);
    function getPastTotalSupply(uint256 timestamp) external view returns (uint256);
    function clock() external view returns (uint48);
    function CLOCK_MODE() external view returns (string memory);
    function delegation(uint256 tokenId) external view returns (Delegation memory);
    function delegateAllFor(address owner, address delegatee) external;
}

/// @dev IVotes interface for ERC-165 interfaceId computation.
///      Matches Aragon's IVotesUpgradeable at the ABI level.
interface IVotes {
    function getVotes(address account) external view returns (uint256);
    function getPastVotes(address account, uint256 timepoint) external view returns (uint256);
    function getPastTotalSupply(uint256 timepoint) external view returns (uint256);
    function delegates(address account) external view returns (address);
    function delegate(address delegatee) external;
    function delegateBySig(address delegatee, uint256 nonce, uint256 expiry, uint8 v, bytes32 r, bytes32 s) external;
}

/// @title VeHemiAragonAdapter
/// @notice Stateless, immutable adapter that presents veHEMI voting power through
///         the IVotes + ERC20 interface expected by Aragon's TokenVoting plugin.
/// @dev All calls are forwarded to the underlying VeHemi and its VeHemiVoteDelegation
///      contracts. The voteDelegation address is read dynamically from VeHemi storage,
///      so governance automatically follows any future VeHemi.updateVoteDelegation() calls.
///
///      delegate(address) calls delegateAllFor on the delegation contract, which
///      delegates ALL of the caller's veHEMI positions to the specified delegatee.
///      This requires the adapter to be set as trustedAdapter on VeHemiVoteDelegation.
///
///      delegates(address) returns the delegatee address ONLY if all of the account's
///      veHEMI positions are delegated to the same address. Returns address(0) if the
///      account has no positions or if positions are split across different delegatees.
contract VeHemiAragonAdapter {
    IVeHemiAdapter private immutable _veHemi;

    constructor(address veHemi_) {
        require(veHemi_ != address(0), "zero veHemi");
        _veHemi = IVeHemiAdapter(veHemi_);
    }

    /// @dev Reads the current voteDelegation contract from VeHemi storage.
    function _delegation() private view returns (IVoteDelegation) {
        return IVoteDelegation(_veHemi.voteDelegation());
    }

    // --- Immutable references ---

    function veHemi() external view returns (address) {
        return address(_veHemi);
    }

    function voteDelegation() external view returns (address) {
        return address(_delegation());
    }

    // --- ERC20-like (for Aragon frontend & isMember) ---

    function balanceOf(address account) external view returns (uint256) {
        return _veHemi.balanceOf(account);
    }

    function decimals() external pure returns (uint8) {
        return 18;
    }

    function totalSupply() external view returns (uint256) {
        return _veHemi.totalVeHemiSupply();
    }

    // --- IVotes ---

    function getVotes(address account) external view returns (uint256) {
        return _delegation().getVotes(account);
    }

    function getPastVotes(address account, uint256 timepoint) external view returns (uint256) {
        return _delegation().getPastVotes(account, timepoint);
    }

    function getPastTotalSupply(uint256 timepoint) external view returns (uint256) {
        return _delegation().getPastTotalSupply(timepoint);
    }

    /// @notice Returns the delegatee if ALL of the account's veHEMI positions are
    ///         delegated to the same address. Returns address(0) if positions are
    ///         split across different delegatees or the account has no positions.
    function delegates(address account) external view returns (address) {
        uint256 count = _veHemi.balanceOf(account);
        if (count == 0) return address(0);

        IVoteDelegation d = _delegation();
        uint256 firstTokenId = _veHemi.tokenOfOwnerByIndex(account, 0);
        address firstDelegatee = d.delegation(firstTokenId).delegatee;

        for (uint256 i = 1; i < count;) {
            uint256 tokenId = _veHemi.tokenOfOwnerByIndex(account, i);
            if (d.delegation(tokenId).delegatee != firstDelegatee) {
                return address(0);
            }
            unchecked { ++i; }
        }

        return firstDelegatee;
    }

    /// @notice Delegates ALL of the caller's veHEMI positions to the specified delegatee.
    ///         Requires this adapter to be set as trustedAdapter on VeHemiVoteDelegation.
    function delegate(address delegatee) external {
        _delegation().delegateAllFor(msg.sender, delegatee);
    }

    function delegateBySig(address, uint256, uint256, uint8, bytes32, bytes32) external pure {
        revert("Use VeHemiVoteDelegation.delegateBySig");
    }

    // --- ERC-6372 ---

    function clock() external view returns (uint48) {
        return _delegation().clock();
    }

    function CLOCK_MODE() external view returns (string memory) {
        return _delegation().CLOCK_MODE();
    }

    // --- ERC-165 ---

    function supportsInterface(bytes4 interfaceId) external pure returns (bool) {
        return interfaceId == type(IVotes).interfaceId || interfaceId == 0x01ffc9a7;
    }

    // --- Metadata ---

    function name() external pure returns (string memory) {
        return "veHEMI Votes";
    }

    function symbol() external pure returns (string memory) {
        return "veHEMI";
    }
}
