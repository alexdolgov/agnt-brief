// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
// General imports
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./GovernableImplementation.sol";
import "./ProxyImplementation.sol";

// Interfaces
import "./interfaces/IGauge.sol";
import "./interfaces/IPenDyst.sol";
import "./interfaces/IPenPool.sol";
import "./interfaces/IPenPoolFactory.sol";
import "./interfaces/IRewardsDistributor.sol";
import "./interfaces/IController.sol";
import "./interfaces/IDyst.sol";
import "./interfaces/IDystBribe.sol";
import "./interfaces/IDystGauge.sol";
import "./interfaces/IDystPool.sol";
import "./interfaces/IDystopiaLens.sol";
import "./interfaces/IVe.sol";
import "./interfaces/IVoter.sol";
import "./interfaces/IVoterProxy.sol";
import "./interfaces/IVeDist.sol";

/**************************************************
 *               Voter Proxy Assets
 **************************************************/

/**
 * Methods in this contract assumes all interactions with gauges and bribes are safe
 * and that the anti-bricking logics are all already processed by voterProxy
 */

contract VoterProxyAssets is
    IERC721Receiver,
    GovernableImplementation,
    ProxyImplementation
{
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    // Public addresses
    uint256 public primaryTokenId;
    uint256 public interimTokenId;
    address public rewardsDistributorAddress;
    address public dystAddress;
    address public veAddress;
    address public veDistAddress;
    address public voterProxyAddress;

    // Internal addresses
    address internal voterProxyAssetAddress;

    // Internal interfaces
    IVoter internal voter;
    IVe internal ve;
    IVeDist internal veDist;
    IController internal controller;

    // re-entrancy
    uint256 internal _unlocked = 1;

    /**
     * @notice Initialize proxy storage
     */
    function initializeProxyStorage(
        address _veAddress,
        address _veDistAddress,
        address _voterProxyAddress,
        address _rewardsDistributorAddress
    ) public onlyGovernance {
        // bypassing checkProxyInitialized since it's only callable by governance
        // Set addresses and interfaces
        veAddress = _veAddress;
        veDistAddress = _veDistAddress;
        ve = IVe(veAddress);
        veDist = IVeDist(veDistAddress);
        controller = IController(ve.controller());
        voter = IVoter(controller.voter());
        dystAddress = IVe(veAddress).token();
        voterProxyAddress = _voterProxyAddress;
        voterProxyAssetAddress = address(this);
        rewardsDistributorAddress = _rewardsDistributorAddress;

        // Set presets
        _unlocked = 1;

        proxyStorageInitialized = true;
    }

    // Modifiers
    modifier onlyGovernanceOrVoterProxy() {
        require(
            msg.sender == voterProxyAddress ||
                msg.sender == governanceAddress(),
            "Only governance or voter proxy"
        );
        _;
    }

    modifier onlyVoterProxy() {
        require(msg.sender == voterProxyAddress, "Only voter proxy");
        _;
    }

    modifier lock() {
        require(_unlocked != 2, "Reentrancy");
        _unlocked = 2;
        _;
        _unlocked = 1;
    }

    /**************************************************
     *                  Gauge interactions
     **************************************************/

    /**
     * @notice Deposit Dystopia LP into a gauge
     * @param dystPoolAddress Address of LP to deposit
     */
    function depositInGauge(address dystPoolAddress, address gaugeAddress)
        public
        onlyVoterProxy
    {
        /** VoterProxy transferred LP to voterProxyAsset...
         * Global Index check handled by voterProxy
         * This method will only be called by voterProxy after claimDyst is successful
         */

        uint256 amount = IDystPool(dystPoolAddress).balanceOf(address(this));

        if (amount > 0) {
            // Deposit Dystopia LP into gauge
            IDystPool(dystPoolAddress).approve(gaugeAddress, amount);
            IDystGauge(gaugeAddress).deposit(amount, primaryTokenId);
        }
    }

    /**
     * @notice Withdraw Dystopia LP from a gauge and approves the amount to voterProxy
     * @param dystPoolAddress Address of LP to withdraw
     * @param gaugeAddress Address of gauge to withdraw from
     * @param amount Amount of LP to withdraw
     */
    function withdrawFromGauge(
        address dystPoolAddress,
        address gaugeAddress,
        uint256 amount
    ) public onlyVoterProxy {
        /*
         * Global Index check handled by voterProxy
         * This method will only be called by voterProxy after claimDyst is successful
         * Or at most once if the global index is out of sync
         **/

        IDystGauge(gaugeAddress).withdraw(amount);
        if (
            IDystPool(dystPoolAddress).allowance(
                address(this),
                voterProxyAddress
            ) == 0
        ) {
            IDystPool(dystPoolAddress).approve(
                voterProxyAddress,
                uint256(2**256 - 1)
            );
        }
    }

    /**************************************************
     *                      Rewards
     **************************************************/

    /**
     * @notice Claims LP DYST emissions and calls rewardsDistributor
     * @param gaugeAddress the gauge to claim from
     */
    function claimDyst(address gaugeAddress)
        public
        onlyVoterProxy
        lock
        returns (uint256 amountClaimed)
    {
        address[] memory dystAddressInArray = new address[](1);
        dystAddressInArray[0] = dystAddress;

        uint256 _balanceBefore = IERC20(dystAddress).balanceOf(address(this));

        IGauge(gaugeAddress).getReward(address(this), dystAddressInArray);

        amountClaimed = IERC20(dystAddress).balanceOf(address(this)).sub(
            _balanceBefore
        );
    }

    /**
     * @notice Claim bribes and notify rewards contract of new balances
     * @param _stakingAddress Address of penPool multiRewards
     * @param _bribeAddress Bribe contract address
     * @param claimableAddresses claimable rewards
     */
    function getRewardFromBribe(
        address _stakingAddress,
        address _bribeAddress,
        address[] memory claimableAddresses
    ) public onlyVoterProxy lock {
        if (primaryTokenId > 0) {
            //record dyst balance
            uint256 dystBefore = IERC20(dystAddress).balanceOf(address(this));

            IDystBribe(_bribeAddress).getReward(
                primaryTokenId,
                claimableAddresses
            );

            // Transfer to rewardsDistributor and call notifyRewardAmount
            for (
                uint256 tokenIndex;
                tokenIndex < claimableAddresses.length;
                tokenIndex++
            ) {
                uint256 amount = IERC20(claimableAddresses[tokenIndex])
                    .balanceOf(address(this));
                if (claimableAddresses[tokenIndex] == dystAddress) {
                    amount = amount.sub(dystBefore);
                }
                if (amount != 0) {
                    IERC20(claimableAddresses[tokenIndex]).safeTransfer(
                        rewardsDistributorAddress,
                        amount
                    );
                    IRewardsDistributor(rewardsDistributorAddress)
                        .notifyRewardAmount(
                            _stakingAddress,
                            claimableAddresses[tokenIndex],
                            amount
                        );
                }
            }
        }
    }

    /**
     * @notice Fetch reward from gauge
     * @param stakingAddress Address of penPool multiRewards
     * @param claimableAddresses Tokens to fetch rewards for
     */
    function getRewardFromGauge(
        address stakingAddress,
        address gaugeAddress,
        address[] memory claimableAddresses
    ) public onlyVoterProxy lock {
        //record dyst balance
        uint256 dystBefore = IERC20(dystAddress).balanceOf(address(this));

        IDystGauge(gaugeAddress).getReward(address(this), claimableAddresses);
        for (
            uint256 tokenIndex;
            tokenIndex < claimableAddresses.length;
            tokenIndex++
        ) {
            uint256 amount = IERC20(claimableAddresses[tokenIndex]).balanceOf(
                address(this)
            );
            if (claimableAddresses[tokenIndex] == dystAddress) {
                amount = amount.sub(dystBefore);
            }
            if (amount != 0) {
                IERC20(claimableAddresses[tokenIndex]).safeTransfer(
                    rewardsDistributorAddress,
                    amount
                );

                IRewardsDistributor(rewardsDistributorAddress)
                    .notifyRewardAmount(
                        stakingAddress,
                        claimableAddresses[tokenIndex],
                        amount
                    );
            }
        }
    }

    /**************************************************
     *                  Whitelisting
     **************************************************/

    /**
     * @notice Whitelist a token on Dystopia
     * @param tokenAddress Address to whitelist
     * @param tokenId Token ID to use for whitelist
     */
    function whitelist(address tokenAddress, uint256 tokenId)
        external
        onlyGovernanceOrVoterProxy
    {
        voter.whitelist(tokenAddress, tokenId);
    }

    /**************************************************
     *                      Voting
     **************************************************/

    /**
     * @notice Submit vote to Dystopia
     * @param poolVote Addresses of pools to vote on
     * @param weights Weights of pools to vote on
     * @dev For first round only governnce can vote, after that voting snapshot can vote
     */
    function vote(address[] memory poolVote, int256[] memory weights)
        external
        onlyGovernanceOrVoterProxy
    {
        if (primaryTokenId > 0) {
            voter.vote(primaryTokenId, poolVote, weights);
        }
    }

    function reset() external onlyGovernanceOrVoterProxy {
        voter.reset(primaryTokenId);
    }

    /**************************************************
     *               Approval
     **************************************************/
    function approveDystToVoterProxy() external {
        IDyst(dystAddress).approve(voterProxyAddress, uint256(2**256 - 1));
    }

    // used during migration
    function approveLPToVoterProxy(address dystPoolAddress, uint256 amount)
        external
        onlyVoterProxy
    {
        IDystPool(dystPoolAddress).approve(voterProxyAddress, amount);
    }

    /**************************************************
     *               Ve Dillution mechanism
     **************************************************/

    /**
     * @notice Claims DYST inflation for veNFT, logs inflation record, mints corresponding penDYST, and distributes penDYST
     */
    function claim() external onlyVoterProxy returns (uint256 inflationAmount) {
        inflationAmount = veDist.claim(primaryTokenId);
    }

    /**************************************************
     *                 NFT Interactions
     **************************************************/

    /**
     * @notice Deposit and merge NFT
     * @param tokenId The token ID to deposit
     * @dev Note: Depositing is a one way/nonreversible action
     */
    function depositNft(uint256 tokenId) public onlyVoterProxy {
        // NFT will already be transferred by voterProxy

        // Merge the NFT to primaryTokenId or interimTokenId
        bool primaryTokenIdSet = primaryTokenId > 0;
        if (primaryTokenIdSet) {
            ve.merge(tokenId, primaryTokenId);
        } else {
            if (interimTokenId == 0) {
                interimTokenId = tokenId;
                return;
            }
            ve.merge(tokenId, interimTokenId);
        }
    }

    /**
     * @notice Convert DYST to veNFT and deposit for penDYST
     * @param amount The amount of DYST to lock
     */
    function lockDyst(uint256 amount) external onlyVoterProxy {
        IDyst dyst = IDyst(dystAddress);
        // Dyst will have been transfered from voterProxy
        uint256 allowance = dyst.allowance(address(this), veAddress);
        if (allowance <= amount) {
            dyst.approve(veAddress, amount);
        }
        uint256 lockTime = 4 * 365 * 86400; // 4 years
        uint256 tokenId = ve.createLock(amount, lockTime);

        bool primaryTokenIdSet = primaryTokenId > 0;
        if (primaryTokenIdSet) {
            ve.merge(tokenId, primaryTokenId);
        } else {
            if (interimTokenId == 0) {
                interimTokenId = tokenId;
                return;
            }
            ve.merge(tokenId, interimTokenId);
        }
    }

    /**************************************************
     *               Migration
     **************************************************/

    function setPrimaryTokenId() external onlyGovernanceOrVoterProxy {
        uint256 voterProxyPrimaryTokenId = IVoterProxy(voterProxyAddress)
            .primaryTokenId();

        // Require that the NFT's already owned by this contract
        require(
            ve.ownerOf(voterProxyPrimaryTokenId) == address(this),
            "veNFT not migrated yet"
        );
        // Set primaryTokenId and merge interimTokenId
        primaryTokenId = voterProxyPrimaryTokenId;
        if (interimTokenId > 0) {
            ve.merge(interimTokenId, primaryTokenId);
        }
        interimTokenId = primaryTokenId;
    }

    /**
     * @notice Don't do anything with direct NFT transfers
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    // function voterAddress() public view returns (address) {
    //     return ve.voter();
    // }
}
