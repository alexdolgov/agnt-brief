// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {IGmxReader} from "src/interfaces/gmx/IGmxReader.sol";
import {IesTokenVester} from "src/interfaces/gmx/IesTokenVester.sol";
import {IStakedGmx} from "src/interfaces/gmx/IStakedGmx.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {TOKEN_ESGMX, TOKEN_STAKED_GMX, HUNDRED_PERCENT} from "src/Constants.sol";

bytes32 constant STORAGE_SLOT = keccak256("ExitVault.storage");

/// @title LibVaultStorage
/// @notice Library for accessing the storage of VaultStorage
library LibVaultStorage {
    /**
     * @notice Retrieves the storage struct of the contract.
     * @return _storage The storage struct containing all contract state variables.
     */
    function getStorage() internal pure returns (ExitVaultStorage.GmxAStorage storage _storage) {
        bytes32 slot = STORAGE_SLOT;

        assembly {
            _storage.slot := slot
        }
    }
}

struct GmxStream {
    uint256 esGmxVest; // Amount of esGMX staker is helping unlock.
    uint256 lastClaim; // Last time staker claimed the vesting.
    uint256 claimedGmx; // Amount of vested gmx already claimed.
    uint256 wethRewardDebt; // MC debt variable for staking rewards
    uint256 gmxRewardDebt; // GMX debt variable for staking rewards
    uint256 shares; // Shares for accounting vesting rewards.
}

struct GlpStream {
    uint256 esGmxVest;
    uint256 lastClaim;
    uint256 claimedGmx;
    uint256 wethRewardDebt;
    uint256 shares;
}

struct UserInfo {
    GmxStream gmxStream;
    GlpStream glpStream;
}

struct WithdrawRequest {
    address token;
    uint256 donation;
}

/// @title VaultStorage
/// @notice Storage inheritance for Vaults
abstract contract ExitVaultStorage {
    /// @notice Struct to hold vault-related storage variables
    struct GmxAStorage {
        address owner;
        address treasury;
        address entryPoint;
        address gmxVester;
        address glpVester;
        address gmxRewardsTracker;
        address extGmxRewardsTracker;
        address glpRewardsTracker;
        address gmxRewardsRouter;
        uint256 protocolPart;
        uint256 donationPartGmx;
        uint256 donationPartGlp;
        uint256 gmxUnlockDate;
        uint256 glpUnlockDate;
        uint256 gmxSupply;
        uint256 glpSupply;
        uint256 accumulatedGmxWethPerShare;
        uint256 accumulatedGlpWethPerShare;
        uint256 accumulatedGmxGmxPerShare;
        mapping(address user => UserInfo) userInfo;
        mapping(address user => mapping(address token => WithdrawRequest)) withdrawRequests;
        address withdrawEscrow;
        uint256 vestingStoppedGmx;
        uint256 vestingStoppedGlp;
    }

    error NotOwner();
    error NotEntryPoint();

    modifier onlyOwner() {
        if (msg.sender != LibVaultStorage.getStorage().owner) revert NotOwner();
        _;
    }

    /**
     * @notice Retrieves the storage struct of the contract
     * @return _storage The storage struct containing all contract state variables
     */
    function _getStorage() internal pure returns (GmxAStorage storage _storage) {
        _storage = LibVaultStorage.getStorage();
    }

    function userInfo(address _staker) external view returns (GmxStream memory gmxS, GlpStream memory glpS) {
        GmxAStorage storage s = _getStorage();
        gmxS = s.userInfo[_staker].gmxStream;
        glpS = s.userInfo[_staker].glpStream;
    }

    function withdrawRequests(address _staker, address _token) external view returns (WithdrawRequest memory) {
        return _getStorage().withdrawRequests[_staker][_token];
    }

    function getMaxGmxCapacity() public view returns (uint256) {
        (,, uint256 gmxForMaxVest,) = getMaxVestAmountForVault(address(this));
        return gmxForMaxVest;
    }

    function getMaxGlpCapacity() public view returns (uint256) {
        (,,, uint256 glpForMaxVest) = getMaxVestAmountForVault(address(this));
        return glpForMaxVest;
    }

    function getVaultInfo()
        external
        view
        returns (
            address owner,
            address escrow,
            uint256 gmxSupply,
            uint256 glpSupply,
            uint256 gmxUnlockDate,
            uint256 glpUnlockDate,
            uint256 donationPartGmx,
            uint256 donationPartGlp,
            uint256 vestingStoppedGmx,
            uint256 vestingStoppedGlp
        )
    {
        GmxAStorage storage s = _getStorage();
        return (
            s.owner,
            s.withdrawEscrow,
            s.gmxSupply,
            s.glpSupply,
            s.gmxUnlockDate,
            s.glpUnlockDate,
            s.donationPartGmx,
            s.donationPartGlp,
            s.vestingStoppedGmx,
            s.vestingStoppedGlp
        );
    }

    function getVaultAccumulators()
        external
        view
        returns (
            uint256 accumulatedGmxWethPerShare,
            uint256 accumulatedGlpWethPerShare,
            uint256 accumulatedGmxGmxPerShare
        )
    {
        GmxAStorage storage s = _getStorage();
        return (s.accumulatedGmxWethPerShare, s.accumulatedGlpWethPerShare, s.accumulatedGmxGmxPerShare);
    }

    /**
     * @notice Returns the maximum amount of GMX and GLP that can be vested for a specific vault.
     * @dev This function queries the GMX Reader contract to retrieve vesting information for both GMX and GLP.
     *      The data returned includes the maximum vestable amounts of GMX and GLP, along with the corresponding GMX and GLP tokens required to reach these maximums.
     * @return maxVestWithGMX The maximum amount of esGMX that can be vested with GMX.
     * @return maxVestWithGLP The maximum amount of esGMX that can be vested with GLP.
     * @return gmxForMaxVest The amount of GMX required for the maximum vest.
     * @return glpForMaxVest The amount of GLP required for the maximum vest.
     */
    function getMaxVestAmountForVault(address _vault)
        public
        view
        returns (uint256 maxVestWithGMX, uint256 maxVestWithGLP, uint256 gmxForMaxVest, uint256 glpForMaxVest)
    {
        GmxAStorage storage s = _getStorage();
        uint256 esGMXBalance = IERC20(TOKEN_ESGMX).balanceOf(_vault);
        uint256 maxVestableAmountGmx = IesTokenVester(s.gmxVester).getMaxVestableAmount(_vault)
            - IesTokenVester(s.gmxVester).getTotalVested(_vault);
        uint256 maxVestableAmountGlp = IesTokenVester(s.glpVester).getMaxVestableAmount(_vault)
            - IesTokenVester(s.glpVester).getTotalVested(_vault);

        maxVestWithGMX = maxVestableAmountGmx > esGMXBalance ? esGMXBalance : maxVestableAmountGmx;
        maxVestWithGLP = maxVestableAmountGlp > esGMXBalance ? esGMXBalance : maxVestableAmountGlp;

        gmxForMaxVest = getMaxGmxCapacity(_vault, maxVestWithGMX);
        glpForMaxVest = getMaxGlpCapacity(_vault, maxVestWithGLP);
    }

    /**
     * Amount of tokens requried to vest esGMX is equal to paitAmount with newEsGmx - current pairAmount.
     * Important detail here is at the time of computation we need to make sure that all already vested esGMX is also subtracted.
     * This can be done either by the math bellow or via the claiming from vester which will call _updateVesting.
     * Since we needed this function to be a view, we had to go the math route.
     */
    function getMaxGmxCapacity(address _vault, uint256 esGMXAmount) public view returns (uint256 gmxForMaxVest) {
        GmxAStorage storage s = _getStorage();
        uint256 gmxPairAmount = IesTokenVester(s.gmxVester).pairAmounts(_vault);
        uint256 gmxNextPairAmount = IesTokenVester(s.gmxVester).getPairAmount(
            _vault,
            IesTokenVester(s.gmxVester).balances(_vault) + esGMXAmount
                - IesTokenVester(s.gmxVester).getVestedAmount(_vault)
                    * (block.timestamp - IesTokenVester(s.gmxVester).lastVestingTimes(_vault)) / 365 days
        );

        if (gmxNextPairAmount > gmxPairAmount) {
            // If this is false then we return 0 and vault does not accept deposits.
            gmxForMaxVest = gmxNextPairAmount - gmxPairAmount;
        }
    }

    function getMaxGlpCapacity(address _vault, uint256 esGMXAmount) public view returns (uint256 glpForMaxVest) {
        GmxAStorage storage s = _getStorage();
        uint256 glpPairAmount = IesTokenVester(s.glpVester).pairAmounts(_vault);
        uint256 glpNextPairAmount = IesTokenVester(s.glpVester).getPairAmount(
            _vault,
            IesTokenVester(s.glpVester).balances(_vault) + esGMXAmount
                - IesTokenVester(s.glpVester).getVestedAmount(_vault)
                    * (block.timestamp - IesTokenVester(s.glpVester).lastVestingTimes(_vault)) / 365 days
        );
        if (glpNextPairAmount > glpPairAmount) {
            glpForMaxVest = glpNextPairAmount - glpPairAmount;
        }
    }
}
