// SPDX-License-Identifier: MIT
/**
 _____
/  __ \
| /  \/ ___  _ ____   _____ _ __ __ _  ___ _ __   ___ ___
| |    / _ \| '_ \ \ / / _ \ '__/ _` |/ _ \ '_ \ / __/ _ \
| \__/\ (_) | | | \ V /  __/ | | (_| |  __/ | | | (_|  __/
 \____/\___/|_| |_|\_/ \___|_|  \__, |\___|_| |_|\___\___|
                                 __/ |
                                |___/
 */
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/ICvgControlTower.sol";

/**
 * @title Cvg-Finance - YsCrvDistributor
 * @notice This contract is used to distribute rewards to locking positions (with YsCvg values).
 */
contract YsCrvDistributor {
    event DepositedCrv(uint256 amount);

    event CrvClaim(uint256 tokenId, uint256 amount);

    /// @dev Curve token
    IERC20 public constant CRV = IERC20(0xD533a949740bb3306d119CC777fa900bA034cd52);

    /// @dev Duration for one TDE => 12 Cycles.
    uint256 public constant TDE_DURATION = 12;

    /// @dev Cvg control tower.
    ICvgControlTower public constant cvgControlTower = ICvgControlTower(0xB0Afc8363b8F36E0ccE5D54251e20720FfaeaeE7);
    ILockingPositionService public constant lockingPositionService =
        ILockingPositionService(0xc8a6480ed7C7B1C401061f8d96bE7De6f94D3E60);
    ILockingPositionManager public constant lockingPositionManager =
        ILockingPositionManager(0x0EDB88Aa3aa665782121fA2509b382f414A0C0cE);

    uint256 public crvDeposited;

    mapping(uint256 => bool) public crvClaimedForToken; //tokenId =>  isClaimed

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                            MODIFIERS
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */
    modifier onlyTreasuryPdd() {
        require(msg.sender == cvgControlTower.treasuryPdd(), "NOT_TREASURY_PDD");
        _;
    }

    /* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                    EXTERNALS ONLY TREASURY PDD
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    /**
     *  @notice Deposit CRV in the contract for the locker of the first TDE.
     *  @dev Function only callable by TreasuryPdd
     *  @param _amount of CRV to deposit
     */
    function depositCrv(uint256 _amount) external onlyTreasuryPdd {
        crvDeposited += _amount;
        CRV.transferFrom(msg.sender, address(this), _amount);

        emit DepositedCrv(_amount);
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                            EXTERNALS
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    /**
     * @notice Claim the CRV rewards to the locking position NFT.
     *  @dev  YsTotalSupply ( at TDE 1) |  Ys reward is computed by CvgRewards contract
     *  |   Bond Treasury Yield is computed and sent.
     * @param tokenId is the token ID to claim rewards of
     * @param receiver is the address that will receive the rewards
     */
    function claimRewards(uint256 tokenId, address receiver) external {
        lockingPositionManager.checkYsClaim(tokenId, msg.sender);

        /// @dev Cannot claim TDE1 twice for a tokenId.
        require(!crvClaimedForToken[tokenId], "TOKEN_ALREADY_CLAIMED");

        /// @dev Get the totalSupply and the balance of position in ysCVG
        (uint256 totalSupply, uint256 balance) = lockingPositionService.getTotalSupplyHistoryAndBalanceOfYs(
            tokenId,
            TDE_DURATION
        );

        /// @dev Cannot claim a Ys rewards if Locking position has no ys value at TDE1.
        require(balance != 0, "NO_YS_BALANCE_ON_THIS_TDE");
        /// @dev Mark the tokenId as claimed on the Storage.
        crvClaimedForToken[tokenId] = true;

        uint256 _amountUser = ((crvDeposited * balance) / totalSupply);

        CRV.transfer(receiver, _amountUser);

        emit CrvClaim(tokenId, _amountUser);
    }

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                            PUBLIC
    / =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */
    /**
     * @notice Obtains all CRV reward tokens for a tokenId
     * @param _tokenId of the locking position
     */
    function getPositionCrvRewards(uint256 _tokenId) external view returns (uint256) {
        ILockingPositionService _lockingPositionService = lockingPositionService;
        (uint256 totalSupply, uint256 balance) = _lockingPositionService.getTotalSupplyAtAndBalanceOfYs(
            _tokenId,
            TDE_DURATION
        );
        if (
            _lockingPositionService.lockingPositions(_tokenId).ysPercentage == 0 ||
            balance == 0 ||
            crvClaimedForToken[_tokenId] ||
            crvDeposited == 0
        ) {
            return 0;
        }

        return ((crvDeposited * balance) / totalSupply);
    }
}
