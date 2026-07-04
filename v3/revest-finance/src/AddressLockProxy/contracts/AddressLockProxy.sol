// SPDX-License-Identifier: GNU-GPL
pragma solidity <=0.8.19;

import "./interfaces/IAddressLock.sol";
import "./interfaces/IResonate.sol";
import "./interfaces/IERC4626.sol";
import "./interfaces/IERC20Detailed.sol";
import "./interfaces/IMetadataHandler.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";

/**
 * @title Address Lock Proxy.
 */
contract AddressLockProxy is Ownable, IAddressLock, ERC165 {
    /// IResonate variable
    IResonate public resonate;

    /// Metadata handler address
    address public metadataHandler;

    /// Precision for calculating rates
    uint256 public constant PRECISION = 1 ether;
    /// Whether Resonate is set or not
    bool private _resonateSet;

    /**
     * @notice Constructor for AddressLockProxy
     */
    constructor() {}

    /**
     * @notice the functions that determines when a fixed-return lock can unlock
     * @param fnftId the ID of the FNFT to check
     * @return whether or not this FNFT is ready to be unlocked
     * @dev if the residual is greater than zero, we know the lock is already unlocked
     */
    function isUnlockable(uint256 fnftId, uint256) external view returns (bool) {
        uint256 residual = resonate.residuals(fnftId);

        if (residual > 0) {
            return true;
        }

        uint256 index = resonate.fnftIdToIndex(fnftId);
        (,, uint256 sharesAtDeposit, bytes32 poolId) = resonate.activated(index);
        (,, address vaultAdapter,, uint128 rate, uint128 addInterestRate, uint256 packetSize) = resonate.pools(poolId);

        uint128 expectedReturn = rate + addInterestRate; //1E18
        uint256 tokensExpectedPerPacket = packetSize * expectedReturn / PRECISION;

        uint256 previewRedemption = IERC4626(vaultAdapter).previewRedeem(sharesAtDeposit / PRECISION);
        uint256 tokensAccumulatedPerPacket;
        if (previewRedemption < packetSize) {
            return false;
        } else {
            tokensAccumulatedPerPacket = previewRedemption - packetSize;
        }

        return tokensAccumulatedPerPacket >= tokensExpectedPerPacket;
    }

    function getDisplayValues(uint256 fnftId, uint256 lockId) external view override returns (bytes memory output) {
        return IMetadataHandler(metadataHandler).getAddressLockBytes(fnftId, lockId);
    }

    function getMetadata() external view override returns (string memory) {
        return IMetadataHandler(metadataHandler).getAddressLockURL();
    }

    function needsUpdate() external pure returns (bool) {
        return false;
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC165, IERC165) returns (bool) {
        return interfaceId == type(IAddressLock).interfaceId || super.supportsInterface(interfaceId);
    }

    function setResonate(address _resonate) external onlyOwner {
        require(!_resonateSet, "ER031");
        _resonateSet = true;
        resonate = IResonate(_resonate);
    }

    function setMetadataHandler(address _metadata) external onlyOwner {
        metadataHandler = _metadata;
    }

    function getAddressRegistry() external view returns (address) {
        return resonate.REGISTRY_ADDRESS();
    }

    ///
    /// Interface-mandated functions
    ///

    function createLock(uint256 fnftId, uint256 lockId, bytes memory arguments) external {}
    function updateLock(uint256 fnftId, uint256 lockId, bytes memory arguments) external {}
    function setAddressRegistry(address revest) external {}
}
