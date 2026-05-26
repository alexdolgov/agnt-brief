// SPDX-License-Identifier: MITsolid
pragma solidity 0.8.11;
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "./ProxyImplementation.sol";
import "hardhat/console.sol";

import "./interfaces/IMultiRewards.sol";
import "./interfaces/IPen.sol";
import "./interfaces/IPenV1Redeem.sol";
import "./interfaces/IPenV1Rewards.sol";
import "./interfaces/IPenLens.sol";
import "./interfaces/IPenDyst.sol";
import "./interfaces/IPenPool.sol";
import "./interfaces/IPenPoolFactory.sol";
import "./interfaces/IDyst.sol";
import "./interfaces/IDystopiaLens.sol";
import "./interfaces/IUserProxy.sol";
import "./interfaces/IUserProxyFactory.sol";
import "./interfaces/IVe.sol";
import "./interfaces/IVlPen.sol";
import "./interfaces/IVoterProxy.sol";
import "./interfaces/IVotingSnapshot.sol";
import "./interfaces/IPartnersRewards.sol";
import "./interfaces/ITokensAllowlist.sol";

/**
 * @title Primary view interface for protocol
 * @author Penrose
 * @dev This is the main contract used by the front-end to read protocol and user position data
 * @dev Other protocol contracts also use oxLens as a primary source of truth
 * @dev All data in this contract is read-only
 */
contract PenLens is ProxyImplementation {
    /*******************************************************
     *                     Configuration
     *******************************************************/

    // Public addresses
    address public gaugesFactoryAddress;
    address public minterAddress;
    address public penPoolFactoryAddress;
    address public penAddress;
    address public penDystAddress;
    address public penDystRewardsPoolAddress;
    address public partnersRewardsPoolAddress;
    address public poolsFactoryAddress;
    address public rewardsDistributorAddress;
    address public dystAddress;
    address public dystopiaLensAddress;
    address public treasuryAddress;
    address public userProxyFactoryAddress;
    address public userProxyInterfaceAddress;
    address public veAddress;
    address public vlPenAddress;
    address public voterProxyAddress;
    address public voterAddress;
    address public votingSnapshotAddress;
    address public penV1RewardsAddress;
    address public penV1RedeemAddress;
    address public penV1Address;
    address public tokensAllowlistAddress;

    /**
     * Interface helpers --these are also user facing, however they are only meant to be consumed
     * by other contracts and are provided as a convenience. In most cases interfaces are kept as internal.
     */
    IMultiRewards public penDystRewardsPool;
    IPen public pen;
    IVlPen public vlPen;
    IPenPoolFactory public penPoolFactory;
    IPenDyst public penDyst;
    IDyst public dyst;
    IDystopiaLens public dystopiaLens;
    IUserProxyFactory public userProxyFactory;
    IVe public ve;
    IVoterProxy public voterProxy;
    IVotingSnapshot public votingSnapshot;
    ITokensAllowlist public tokensAllowlist;

    // Migration pool mapping
    mapping(address => address) public penPoolsMigrationMapping;

    // Modifiers
    modifier onlyTreasury() {
        require(msg.sender == treasuryAddress, "Only treasury");
        _;
    }

    // Structs
    struct PenPoolData {
        address id;
        address stakingAddress;
        uint256 stakedTotalSupply;
        uint256 totalSupply;
        IDystopiaLens.Pool poolData;
    }
    struct ProtocolAddresses {
        address penPoolFactoryAddress;
        address dystopiaLensAddress;
        address penAddress;
        address vlPenAddress;
        address penDystAddress;
        address voterProxyAddress;
        address dystAddress;
        address voterAddress;
        address poolsFactoryAddress;
        address gaugesFactoryAddress;
        address minterAddress;
        address veAddress;
        address userProxyInterfaceAddress;
        address votingSnapshotAddress;
        address penV1RewardsAddress;
        address penV1RedeemAddress;
        address penV1Address;
        address tokensAllowlistAddress;
    }
    struct UserPosition {
        address userProxyAddress;
        uint256 veTotalBalanceOf;
        IDystopiaLens.PositionVe[] vePositions;
        IUserProxy.PositionStakingPool[] stakingPools;
        uint256 penDystBalanceOf;
        uint256 stakedPenDystBalanceOf;
        IUserProxy.RewardToken[] penDystRewardPoolPosition;
        uint256 penV1StakedPenDystStakableAmount;
        uint256 penV1StakedPenDystBalanceOf;
        IUserProxy.RewardToken[] penV1PenDystRewardPoolPosition;
        uint256 penBalanceOf;
        uint256 dystBalanceOf;
        uint256 vlPenBalanceOf;
        IVlPen.LocksData vlPenLocksData;
        IUserProxy.RewardToken[] vlPenRewardPoolPosition;
        VotesData votesData;
        uint256 penV1BalanceOf;
        address[] userProxyImplementationsAddresses;
    }
    struct VotesData {
        address delegateAddress;
        uint256 weightTotal;
        uint256 weightUsed;
        uint256 weightAvailable;
        IVotingSnapshot.Vote[] votes;
    }
    struct StakingPoolRewardTokens {
        address stakingPoolAddress;
        IUserProxy.RewardToken[] rewardTokens;
    }
    struct MigrateablePool {
        address fromPenPoolAddress;
        address toPenPoolAddress;
        address fromStakingPoolAddress;
        uint256 balanceOf;
    }

    // Initialization
    function initializeProxyStorage(
        address _penPoolFactoryAddress,
        address _userProxyFactoryAddress,
        address _dystopiaLensAddress,
        address _penAddress,
        address _vlPenAddress,
        address _penDystAddress,
        address _penDystRewardsPoolAddress,
        address _rewardsDistributorAddress,
        address _partnersRewardsPoolAddress,
        address _userProxyInterfaceAddress,
        address _votingSnapshotAddress
    ) public checkProxyInitialized {
        treasuryAddress = msg.sender;

        // Set addresses and interfaces
        dystopiaLensAddress = _dystopiaLensAddress;
        dystopiaLens = IDystopiaLens(dystopiaLensAddress);
        gaugesFactoryAddress = dystopiaLens.gaugesFactoryAddress();
        minterAddress = dystopiaLens.minterAddress();
        penAddress = _penAddress;
        pen = IPen(penAddress);
        penPoolFactoryAddress = _penPoolFactoryAddress;
        penPoolFactory = IPenPoolFactory(penPoolFactoryAddress);
        penDystAddress = _penDystAddress;
        penDyst = IPenDyst(penDystAddress);
        penDystRewardsPoolAddress = _penDystRewardsPoolAddress;
        penDystRewardsPool = IMultiRewards(penDystRewardsPoolAddress);
        partnersRewardsPoolAddress = _partnersRewardsPoolAddress;
        poolsFactoryAddress = dystopiaLens.poolsFactoryAddress();
        rewardsDistributorAddress = _rewardsDistributorAddress;
        dystAddress = dystopiaLens.dystAddress();
        dyst = IDyst(dystAddress);
        userProxyFactoryAddress = _userProxyFactoryAddress;
        userProxyFactory = IUserProxyFactory(userProxyFactoryAddress);
        userProxyInterfaceAddress = _userProxyInterfaceAddress;
        veAddress = dystopiaLens.veAddress();
        ve = IVe(veAddress);
        vlPenAddress = _vlPenAddress;
        vlPen = IVlPen(vlPenAddress);
        voterProxyAddress = penPoolFactory.voterProxyAddress();
        voterProxy = IVoterProxy(voterProxyAddress);
        voterAddress = dystopiaLens.voterAddress();
        votingSnapshotAddress = _votingSnapshotAddress;
        votingSnapshot = IVotingSnapshot(votingSnapshotAddress);
        tokensAllowlistAddress = penPoolFactory.tokensAllowlist();
        tokensAllowlist = ITokensAllowlist(tokensAllowlistAddress);
    }

    /**
     * @notice Transfers treasury
     */
    function transferTreasury(address _newTreasury) external {
        require(
            msg.sender == treasuryAddress,
            "Only treasury can transfer treasury"
        );
        treasuryAddress = _newTreasury;
    }

    /*******************************************************
     *                     Protocol metadata
     *******************************************************/

    /**
     * @notice Fetch metadata about Dystopia and Penrose
     */
    function protocolAddresses()
        external
        view
        returns (ProtocolAddresses memory)
    {
        return
            ProtocolAddresses({
                penPoolFactoryAddress: penPoolFactoryAddress,
                dystopiaLensAddress: dystopiaLensAddress,
                penAddress: penAddress,
                vlPenAddress: vlPenAddress,
                penDystAddress: penDystAddress,
                voterProxyAddress: voterProxyAddress,
                dystAddress: dystAddress,
                voterAddress: voterAddress,
                poolsFactoryAddress: poolsFactoryAddress,
                gaugesFactoryAddress: gaugesFactoryAddress,
                minterAddress: minterAddress,
                veAddress: veAddress,
                userProxyInterfaceAddress: userProxyInterfaceAddress,
                votingSnapshotAddress: votingSnapshotAddress,
                penV1RewardsAddress: penV1RewardsAddress,
                penV1RedeemAddress: penV1RedeemAddress,
                penV1Address: penV1Address,
                tokensAllowlistAddress: tokensAllowlistAddress
            });
    }

    /**
     * @notice OXD total supply
     */
    function penTotalSupply() external view returns (uint256) {
        return IERC20(penAddress).totalSupply();
    }

    /**
     * @notice Fetch VoterProxy's primary token ID
     */
    function tokenId() external view returns (uint256) {
        return voterProxy.primaryTokenId();
    }

    /**
     * @notice Fetch DYST's inflation since inception
     */
    function dystInflationSinceInception() external view returns (uint256) {
        return voterProxy.dystInflationSinceInception();
    }

    /*******************************************************
     *                      Reward tokens
     *******************************************************/

    /**
     * @notice Fetch reward token earnings and position given an account address, staking pool address and rewards token address
     * @param accountAddress The account to fetch a position for
     * @param stakingPoolAddress Address of the staking pool
     * @param rewardTokenAddress Address of the reward token
     * @return Returns a list of reward token positions
     */
    function rewardTokenPositionOf(
        address accountAddress,
        address stakingPoolAddress,
        address rewardTokenAddress
    ) public view returns (IUserProxy.RewardToken memory) {
        address userProxyAddress = userProxyByAccount(accountAddress);
        IMultiRewards multiRewards = IMultiRewards(stakingPoolAddress);
        return
            IUserProxy.RewardToken({
                rewardTokenAddress: rewardTokenAddress,
                rewardRate: multiRewards
                    .rewardData(rewardTokenAddress)
                    .rewardRate,
                rewardPerToken: multiRewards.rewardPerToken(rewardTokenAddress),
                getRewardForDuration: multiRewards.getRewardForDuration(
                    rewardTokenAddress
                ),
                earned: multiRewards.earned(
                    userProxyAddress,
                    rewardTokenAddress
                )
            });
    }

    /**
     * @notice Fetch multiple reward token positions for an account and staking pool address
     * @param accountAddress The account to fetch positions for
     * @param stakingPoolAddress Address of the staking pool
     * @return Returns multiple staking pool positions assocaited with an account/pool
     */
    function rewardTokensPositionsOf(
        address accountAddress,
        address stakingPoolAddress
    ) public view returns (IUserProxy.RewardToken[] memory) {
        IMultiRewards multiRewards = IMultiRewards(stakingPoolAddress);
        uint256 rewardTokensLength = multiRewards.rewardTokensLength();

        IUserProxy.RewardToken[]
            memory _rewardTokensPositionsOf = new IUserProxy.RewardToken[](
                rewardTokensLength
            );

        for (
            uint256 rewardTokenIndex;
            rewardTokenIndex < rewardTokensLength;
            rewardTokenIndex++
        ) {
            address rewardTokenAddress = multiRewards.rewardTokens(
                rewardTokenIndex
            );
            _rewardTokensPositionsOf[rewardTokenIndex] = rewardTokenPositionOf(
                accountAddress,
                stakingPoolAddress,
                rewardTokenAddress
            );
        }
        return _rewardTokensPositionsOf;
    }

    /**
     * @notice Fetch rewards data given a number of staking contract
     * @param stakingPoolsAddresses Addresses of the staking pools to fetch data for
     * @return Returns reward data for all reward tokens for given staking pools
     */
    function rewardTokensDatas(address[] memory stakingPoolsAddresses)
        external
        view
        returns (IPenLens.RewardTokenData[][] memory)
    {
        IPenLens.RewardTokenData[][]
            memory _rewardTokensDatas = new IPenLens.RewardTokenData[][](
                stakingPoolsAddresses.length
            );

        for (
            uint256 stakingPoolIndex;
            stakingPoolIndex < stakingPoolsAddresses.length;
            stakingPoolIndex++
        ) {
            address stakingPoolAddress = stakingPoolsAddresses[
                stakingPoolIndex
            ];
            IPenLens.RewardTokenData[] memory rewardsData = rewardTokensData(
                stakingPoolAddress
            );
            _rewardTokensDatas[stakingPoolIndex] = rewardsData;
        }
        return _rewardTokensDatas;
    }

    /**
     * @notice Fetch rewards data for staking contract
     * @param stakingPoolAddress Address of the staking pool
     * @return Returns reward data for all reward tokens
     */
    function rewardTokensData(address stakingPoolAddress)
        public
        view
        returns (IPenLens.RewardTokenData[] memory)
    {
        IMultiRewards multiRewards = IMultiRewards(stakingPoolAddress);
        uint256 rewardTokensLength = multiRewards.rewardTokensLength();

        IPenLens.RewardTokenData[]
            memory _rewardTokensPositionsOf = new IPenLens.RewardTokenData[](
                rewardTokensLength
            );

        for (
            uint256 rewardTokenIndex;
            rewardTokenIndex < rewardTokensLength;
            rewardTokenIndex++
        ) {
            address rewardTokenAddress = multiRewards.rewardTokens(
                rewardTokenIndex
            );
            IMultiRewards.Reward memory reward = multiRewards.rewardData(
                rewardTokenAddress
            );
            _rewardTokensPositionsOf[rewardTokenIndex] = IPenLens
                .RewardTokenData({
                    id: rewardTokenAddress,
                    rewardRate: reward.rewardRate,
                    periodFinish: reward.periodFinish
                });
        }
        return _rewardTokensPositionsOf;
    }

    /**
     * @notice Fetch all reward token positions given an account address
     * @param accountAddress The account to fetch positions for
     * @dev Utilizes a per-user staking pool position map to find positions with O(n) efficiency
     */
    function rewardTokensPositionsOf(address accountAddress)
        external
        view
        returns (StakingPoolRewardTokens[] memory)
    {
        address userProxyAddress = userProxyByAccount(accountAddress);
        address[] memory _stakingPoolsAddresses = IUserProxy(userProxyAddress)
            .stakingAddresses();
        StakingPoolRewardTokens[]
            memory stakingPoolsRewardsTokens = new StakingPoolRewardTokens[](
                _stakingPoolsAddresses.length
            );
        for (
            uint256 stakingPoolIndex;
            stakingPoolIndex <
            IUserProxy(userProxyAddress).stakingPoolsLength();
            stakingPoolIndex++
        ) {
            address stakingPoolAddress = _stakingPoolsAddresses[
                stakingPoolIndex
            ];
            stakingPoolsRewardsTokens[
                stakingPoolIndex
            ] = StakingPoolRewardTokens({
                stakingPoolAddress: stakingPoolAddress,
                rewardTokens: rewardTokensPositionsOf(
                    accountAddress,
                    stakingPoolAddress
                )
            });
        }
        return stakingPoolsRewardsTokens;
    }

    /*******************************************************
     *                     LP Positions
     *******************************************************/

    /**
     * @notice Dystopia pools positions
     * @param accountAddress Account to fetch positions for
     */
    function poolsPositions(address accountAddress)
        external
        view
        returns (IDystopiaLens.PositionPool[] memory)
    {
        return dystopiaLens.poolsPositionsOf(accountAddress);
    }

    /**
     * @notice Dystopia pools positions
     * @param accountAddress Account to fetch positions for
     * @param startIndex Start index
     * @param endIndex End index
     */
    function poolsPositions(
        address accountAddress,
        uint256 startIndex,
        uint256 endIndex
    ) external view returns (IDystopiaLens.PositionPool[] memory) {
        return
            dystopiaLens.poolsPositionsOf(accountAddress, startIndex, endIndex);
    }

    /**
     * @notice Find a staking pool position for an account given an account address and staking pool address
     * @param accountAddress The account to fetch positions for
     * @param stakingPoolAddress The address of the staking pool to check
     */
    function stakingPoolPosition(
        address accountAddress,
        address stakingPoolAddress
    ) public view returns (IUserProxy.PositionStakingPool memory) {
        address userProxyAddress = userProxyByAccount(accountAddress);
        address penPoolAddress = IMultiRewards(stakingPoolAddress)
            .stakingToken();
        uint256 balanceOf = IMultiRewards(stakingPoolAddress).balanceOf(
            userProxyAddress
        );
        address dystPoolAddress = IPenPool(penPoolAddress).dystPoolAddress();

        IUserProxy.RewardToken[] memory rewardTokens = rewardTokensPositionsOf(
            accountAddress,
            stakingPoolAddress
        );

        return
            IUserProxy.PositionStakingPool({
                stakingPoolAddress: stakingPoolAddress,
                penPoolAddress: penPoolAddress,
                dystPoolAddress: dystPoolAddress,
                balanceOf: balanceOf,
                rewardTokens: rewardTokens
            });
    }

    /**
     * @notice Find all staking pool positions for msg.sender
     */
    function stakingPoolsPositions()
        external
        view
        returns (IUserProxy.PositionStakingPool[] memory)
    {
        return stakingPoolsPositions(msg.sender);
    }

    /**
     * @notice Find all staking pool positions given an account address
     * @param accountAddress The account to fetch positions for
     */
    function stakingPoolsPositions(address accountAddress)
        public
        view
        returns (IUserProxy.PositionStakingPool[] memory)
    {
        IUserProxy.PositionStakingPool[] memory stakingPositions;

        address userProxyAddress = userProxyByAccount(accountAddress);
        if (userProxyAddress == address(0)) {
            return stakingPositions;
        }

        address[] memory _stakingPoolsAddresses = IUserProxy(userProxyAddress)
            .stakingAddresses();

        stakingPositions = new IUserProxy.PositionStakingPool[](
            _stakingPoolsAddresses.length
        );

        for (
            uint256 stakingPoolAddressIdx;
            stakingPoolAddressIdx < _stakingPoolsAddresses.length;
            stakingPoolAddressIdx++
        ) {
            address stakingPoolAddress = _stakingPoolsAddresses[
                stakingPoolAddressIdx
            ];
            IUserProxy.PositionStakingPool
                memory stakingPosition = stakingPoolPosition(
                    accountAddress,
                    stakingPoolAddress
                );
            stakingPositions[stakingPoolAddressIdx] = stakingPosition;
        }
        return stakingPositions;
    }

    /*******************************************************
     *                   penPools positions
     *******************************************************/

    /**
     * @notice Fetch a list of penPools that need migration
     * @param accountAddress Account address to find migrations for
     */
    function migrateablePenPools(address accountAddress)
        external
        view
        returns (MigrateablePool[] memory)
    {
        IUserProxy _userProxy = userProxy(accountAddress);
        IUserProxy.PositionStakingPool[]
            memory stakingPools = stakingPoolsPositions(accountAddress);
        uint256 stakingPoolsLength = stakingPools.length;
        MigrateablePool[] memory migrateablePools = new MigrateablePool[](
            stakingPoolsLength
        );
        uint256 currentIndex;
        for (
            uint256 stakingPoolIndex;
            stakingPoolIndex < stakingPoolsLength;
            stakingPoolIndex++
        ) {
            IUserProxy.PositionStakingPool memory stakingPool = stakingPools[
                stakingPoolIndex
            ];
            address fromPenPoolAddress = stakingPool.penPoolAddress;
            address toPenPoolAddress = penPoolsMigrationMapping[
                fromPenPoolAddress
            ];
            bool penPoolNeedsMigration = toPenPoolAddress != address(0);
            if (penPoolNeedsMigration) {
                migrateablePools[currentIndex] = MigrateablePool({
                    fromPenPoolAddress: fromPenPoolAddress,
                    toPenPoolAddress: toPenPoolAddress,
                    fromStakingPoolAddress: stakingPool.stakingPoolAddress,
                    balanceOf: stakingPool.balanceOf
                });
                currentIndex++;
            }
        }
        bytes memory encodedMigrations = abi.encode(migrateablePools);
        assembly {
            mstore(add(encodedMigrations, 0x40), currentIndex)
        }
        return abi.decode(encodedMigrations, (MigrateablePool[]));
    }

    /**
     * @notice Fetch the total number of synced penPools
     */
    function penPoolsLength() public view returns (uint256) {
        return penPoolFactory.penPoolsLength();
    }

    /**
     * @notice Fetch all penPools addresses
     * @return Returns all penPool addresses
     * @dev Warning: at some point this method will no longer work (we will run out of gas) and pagination must be used
     */
    function penPoolsAddresses() public view returns (address[] memory) {
        uint256 _penPoolsLength = penPoolsLength();
        address[] memory _penPoolsAddresses = new address[](_penPoolsLength);
        for (uint256 penPoolIdx; penPoolIdx < _penPoolsLength; penPoolIdx++) {
            _penPoolsAddresses[penPoolIdx] = penPoolFactory.penPools(penPoolIdx);
        }
        return _penPoolsAddresses;
    }

    /**
     * @notice Find metadata about an penPool given an penPoolAddress
     * @param penPoolAddress The address of the penPool to fetch metadata for
     */
    function penPoolData(address penPoolAddress)
        public
        view
        returns (PenPoolData memory)
    {
        IPenPool penPool = IPenPool(penPoolAddress);
        address stakingAddress = penPool.stakingAddress();
        address dystPoolAddress = penPool.dystPoolAddress();
        uint256 totalSupply = penPool.totalSupply();
        uint256 stakedTotalSupply = IMultiRewards(stakingAddress).totalSupply();
        IDystopiaLens.Pool memory poolData = dystopiaLens.poolInfo(
            dystPoolAddress
        );
        return
            PenPoolData({
                id: penPoolAddress,
                stakingAddress: stakingAddress,
                stakedTotalSupply: stakedTotalSupply,
                totalSupply: totalSupply,
                poolData: poolData
            });
    }

    /**
     * @notice Fetch penPool metadata given an array of penPool addresses
     * @param _penPoolsAddresses A list of penPool addresses
     * @dev This method is intended for pagination
     */
    function penPoolsData(address[] memory _penPoolsAddresses)
        public
        view
        returns (PenPoolData[] memory)
    {
        PenPoolData[] memory _penPoolsData = new PenPoolData[](
            _penPoolsAddresses.length
        );
        for (
            uint256 penPoolIdx;
            penPoolIdx < _penPoolsAddresses.length;
            penPoolIdx++
        ) {
            address penPoolAddress = _penPoolsAddresses[penPoolIdx];
            _penPoolsData[penPoolIdx] = penPoolData(penPoolAddress);
        }
        return _penPoolsData;
    }

    /**
     * @notice Find metadata for all penPools
     * @dev Warning: at some point this method will no longer work (we will run out of gas) and pagination must be used
     * @return Returns metadata for all penPools
     */
    function penPoolsData() external view returns (PenPoolData[] memory) {
        address[] memory _penPoolsAddresses = penPoolsAddresses();
        return penPoolsData(_penPoolsAddresses);
    }

    /*******************************************************
     *                       Voting
     *******************************************************/

    /**
     * @notice Find voting metadata and positions for an account
     * @param accountAddress The address to fetch voting metadata for
     */
    function votePositionsOf(address accountAddress)
        public
        view
        returns (VotesData memory)
    {
        uint256 weightTotal = votingSnapshot.voteWeightTotalByAccount(
            accountAddress
        );
        uint256 weightUsed = votingSnapshot.voteWeightUsedByAccount(
            accountAddress
        );
        uint256 weightAvailable = votingSnapshot.voteWeightAvailableByAccount(
            accountAddress
        );
        address delegateAddress = votingSnapshot.voteDelegateByAccount(
            accountAddress
        );
        IVotingSnapshot.Vote[] memory votes = votingSnapshot.votesByAccount(
            accountAddress
        );
        return
            VotesData({
                delegateAddress: delegateAddress,
                weightTotal: weightTotal,
                weightUsed: weightUsed,
                weightAvailable: weightAvailable,
                votes: votes
            });
    }

    /*******************************************************
     *                   Dystopia positions
     *******************************************************/

    /**
     * @notice Find the amount of DYST owned by an account
     * @param accountAddress The address to check balance of
     * @return Returns DYST balance of account
     */
    function dystBalanceOf(address accountAddress)
        public
        view
        returns (uint256)
    {
        return dyst.balanceOf(accountAddress);
    }

    /*******************************************************
     *                    penDYST positions
     *******************************************************/

    /**
     * @notice Find the amount of penDYST owned by an account
     * @param accountAddress The address to check balance of
     * @return Returns penDYST balance of account
     */
    function penDystBalanceOf(address accountAddress)
        public
        view
        returns (uint256)
    {
        return penDyst.balanceOf(accountAddress);
    }

    /**
     * @notice Find the amount of staked penDYST for an account
     * @param accountAddress The address to check staked balance of
     * @return stakedBalance Returns staked penDYST balance of account
     */
    function stakedPenDystBalanceOf(address accountAddress)
        public
        view
        returns (uint256 stakedBalance)
    {
        address userProxyAddress = userProxyByAccount(accountAddress);
        if (isPartner(userProxyAddress)) {
            stakedBalance = IPartnersRewards(partnersRewardsPoolAddress)
                .balanceOf(userProxyAddress);
        } else {
            stakedBalance = penDystRewardsPool.balanceOf(userProxyAddress);
        }
        return stakedBalance;
    }

    /**
     * @notice Find the amount of penDYST staked in the OXDv1 rewards pool for an account
     * @param accountAddress The address to check staked balance of
     * @return stakedBalance Returns staked penDYST balance of account
     */
    function penV1StakedPenDystBalanceOf(address accountAddress)
        public
        view
        returns (uint256 stakedBalance)
    {
        address userProxyAddress = userProxyByAccount(accountAddress);
        stakedBalance = IMultiRewards(penV1RewardsAddress).balanceOf(
            userProxyAddress
        );
        return stakedBalance;
    }

    /**
     * @notice Find the amount of penDYST that can be added to the OXDv1 rewards pool for an account
     * @param accountAddress The address to check staked balance of
     * @return stakableAmount Returns the additional stakable amount
     */
    function penV1StakedPenDystStakableAmount(address accountAddress)
        public
        view
        returns (uint256 stakableAmount)
    {
        address userProxyAddress = userProxyByAccount(accountAddress);

        // get staked balance and stakingCap
        uint256 stakedBalance = IPenV1Rewards(penV1RewardsAddress).balanceOf(
            userProxyAddress
        );
        uint256 stakingCap = IPenV1Rewards(penV1RewardsAddress).stakingCap(
            userProxyAddress
        );

        // check stakingCap > stakedBalance to prevent reverts, returns 0 if otherwise
        if (stakingCap > stakedBalance) {
            return stakingCap - stakedBalance;
        }
    }

    /**
     * @notice Find penDYST reward pool data for an account
     * @param accountAddress The address to check reward pool data for
     */
    function penDystRewardPoolPosition(address accountAddress)
        public
        view
        returns (IUserProxy.RewardToken[] memory)
    {
        //determin partner status
        if (isProxyPartner(accountAddress)) {
            return
                rewardTokensPositionsOf(
                    accountAddress,
                    partnersRewardsPoolAddress
                );
        }
        return
            rewardTokensPositionsOf(accountAddress, penDystRewardsPoolAddress);
    }

    /*******************************************************
     *                    vlOXD positions
     *******************************************************/

    /**
     * @notice Fetch vlOXD metadata and locks for an account
     * @param accountAddress The address to check
     */
    function vlPenLocksData(address accountAddress)
        public
        view
        returns (IVlPen.LocksData memory)
    {
        uint256 total;
        uint256 unlockable;
        uint256 locked;
        IVlPen.LockedBalance[] memory locks;
        (total, unlockable, locked, locks) = vlPen.lockedBalances(
            accountAddress
        );
        return
            IVlPen.LocksData({
                total: total,
                unlockable: unlockable,
                locked: locked,
                locks: locks
            });
    }

    /**
     * @notice Fetch vlOXD reward token positions for an account
     * @param accountAddress The address to check
     */
    function vlPenRewardTokenPositionsOf(address accountAddress)
        public
        view
        returns (IUserProxy.RewardToken[] memory)
    {
        address userProxyAddress = userProxyByAccount(accountAddress);
        IVlPen _vlPen = vlPen;
        uint256 rewardTokensLength = _vlPen.rewardTokensLength();
        IVlPen.EarnedData[] memory claimable = vlPen.claimableRewards(
            userProxyAddress
        );
        IUserProxy.RewardToken[]
            memory _rewardTokensPositionsOf = new IUserProxy.RewardToken[](
                rewardTokensLength
            );

        for (
            uint256 rewardTokenIndex;
            rewardTokenIndex < rewardTokensLength;
            rewardTokenIndex++
        ) {
            address rewardTokenAddress = _vlPen.rewardTokens(rewardTokenIndex);
            _rewardTokensPositionsOf[
                rewardTokenIndex
            ] = vlPenRewardTokenPositionOf(accountAddress, rewardTokenAddress);
            _rewardTokensPositionsOf[rewardTokenIndex].earned = claimable[
                rewardTokenIndex
            ].amount;
        }
        return _rewardTokensPositionsOf;
    }

    /**
     * @notice Fetch vlOXD reward token position of a specific token address for an account
     * @param accountAddress The address to check
     * @param rewardTokenAddress The token to check
     */
    function vlPenRewardTokenPositionOf(
        address accountAddress,
        address rewardTokenAddress
    ) public view returns (IUserProxy.RewardToken memory) {
        address userProxyAddress = userProxyByAccount(accountAddress);
        IVlPen _vlPen = vlPen;

        return
            IUserProxy.RewardToken({
                rewardTokenAddress: rewardTokenAddress,
                rewardRate: _vlPen.rewardData(rewardTokenAddress).rewardRate,
                rewardPerToken: _vlPen.rewardPerToken(rewardTokenAddress),
                getRewardForDuration: _vlPen.getRewardForDuration(
                    rewardTokenAddress
                ),
                earned: 0
            });
    }

    /*******************************************************
     *                     veNFT positions
     *******************************************************/

    /**
     * @notice Calculate total veNFT balance summation given an array of ve positions
     */
    function veTotalBalanceOf(IDystopiaLens.PositionVe[] memory positions)
        public
        pure
        returns (uint256)
    {
        uint256 _veotalBalanceOf;
        for (
            uint256 positionIdx;
            positionIdx < positions.length;
            positionIdx++
        ) {
            IDystopiaLens.PositionVe memory position = positions[positionIdx];
            _veotalBalanceOf += position.balanceOf;
        }
        return _veotalBalanceOf;
    }

    /*******************************************************
     *                   Global user positions
     *******************************************************/

    /**
     * @notice Find all positions for an account
     * @param accountAddress The address to check
     * @dev Warning: it's possible this may revert at some point (due to out-of-gas) if the user has too many positions
     */
    function positionsOf(address accountAddress)
        external
        view
        returns (UserPosition memory)
    {
        UserPosition memory _userPosition;
        address userProxyAddress = userProxyByAccount(accountAddress);
        // Sectioning to avoid stack-too-deep (there has to be a std joke somewhere in here)
        {
            IDystopiaLens.PositionVe[] memory vePositions = dystopiaLens
                .vePositionsOf(accountAddress);
            IUserProxy.PositionStakingPool[]
                memory stakingPools = stakingPoolsPositions(accountAddress);

            uint256 _veTotalBalanceOf = veTotalBalanceOf(vePositions);
            uint256 _penDystBalanceOf = penDystBalanceOf(accountAddress);
            IUserProxy.RewardToken[]
                memory _penDystRewardPoolPosition = penDystRewardPoolPosition(
                    accountAddress
                );
            IUserProxy.RewardToken[]
                memory _penV1PenDystRewardPoolPosition = rewardTokensPositionsOf(
                    accountAddress,
                    penV1RewardsAddress
                );

            IUserProxy _userProxy = userProxy(accountAddress);
            if (userProxyAddress != address(0)) {
                _userPosition.userProxyImplementationsAddresses = _userProxy
                    .implementationsAddresses();
            }
            _userPosition.userProxyAddress = userProxyAddress;
            _userPosition.veTotalBalanceOf = _veTotalBalanceOf;
            _userPosition.vePositions = vePositions;
            _userPosition.stakingPools = stakingPools;
            _userPosition.penDystBalanceOf = _penDystBalanceOf;
            _userPosition
                .penDystRewardPoolPosition = _penDystRewardPoolPosition;
            _userPosition
                .penV1PenDystRewardPoolPosition = _penV1PenDystRewardPoolPosition;
        }
        {
            uint256 _dystBalanceOf = dystBalanceOf(accountAddress);
            uint256 penBalanceOf = IERC20(penAddress).balanceOf(accountAddress);
            uint256 penV1BalanceOf = IERC20(penV1Address).balanceOf(
                accountAddress
            );
            uint256 vlPenBalanceOf = IVlPen(vlPenAddress).lockedBalanceOf(
                userProxyAddress
            );
            IUserProxy.RewardToken[]
                memory _vlPenRewardPoolPosition = vlPenRewardTokenPositionsOf(
                    accountAddress
                );

            uint256 _stakedPenDystBalanceOf = stakedPenDystBalanceOf(
                accountAddress
            );
            uint256 _penV1StakedPenDystBalanceOf = penV1StakedPenDystBalanceOf(
                accountAddress
            );
            IVlPen.LocksData memory _vlPenLocksData = vlPenLocksData(
                userProxyAddress
            );
            VotesData memory votesData = votePositionsOf(userProxyAddress);

            uint256 _penV1StakedPenDystStakableAmount = penV1StakedPenDystStakableAmount(
                    accountAddress
                );

            _userPosition.stakedPenDystBalanceOf = _stakedPenDystBalanceOf;
            _userPosition
                .penV1StakedPenDystBalanceOf = _penV1StakedPenDystBalanceOf;
            _userPosition.penBalanceOf = penBalanceOf;
            _userPosition.dystBalanceOf = _dystBalanceOf;
            _userPosition.vlPenBalanceOf = vlPenBalanceOf;
            _userPosition.vlPenLocksData = _vlPenLocksData;
            _userPosition.vlPenRewardPoolPosition = _vlPenRewardPoolPosition;
            _userPosition.votesData = votesData;
            _userPosition.penV1BalanceOf = penV1BalanceOf;
            _userPosition
                .penV1StakedPenDystStakableAmount = _penV1StakedPenDystStakableAmount;
        }
        return _userPosition;
    }

    /*******************************************************
     *                      User Proxy
     *******************************************************/

    /**
     * @notice Given an account address fetch the user's UserProxy interface
     * @dev Internal convenience method
     */
    function userProxy(address accountAddress)
        internal
        view
        returns (IUserProxy)
    {
        address userProxyAddress = userProxyByAccount(accountAddress);
        return IUserProxy(userProxyAddress);
    }

    /**
     * @notice Fetch total number of user proxies
     */
    function userProxiesLength() public view returns (uint256) {
        return userProxyFactory.userProxiesLength();
    }

    /**
     * @notice Fetch a user's UserProxy address given an account address
     */
    function userProxyByAccount(address accountAddress)
        public
        view
        returns (address)
    {
        return userProxyFactory.userProxyByAccount(accountAddress);
    }

    /**
     * @notice Find a user proxy address given an index
     */
    function userProxyByIndex(uint256 index) public view returns (address) {
        return userProxyFactory.userProxyByIndex(index);
    }

    /*******************************************************
     *                    Helper utilities
     *******************************************************/

    /**
     * @notice Given an penPoolAddress fetch the corresponding dyst pool address
     */
    function dystPoolByPenPool(address penPoolAddress)
        public
        view
        returns (address)
    {
        return penPoolFactory.dystPoolByPenPool(penPoolAddress);
    }

    /**
     * @notice Given a DYST pool address fetch the corresponding penPool address
     */
    function penPoolByDystPool(address dystPoolAddress)
        public
        view
        returns (address)
    {
        return penPoolFactory.penPoolByDystPool(dystPoolAddress);
    }

    /**
     * @notice Given a DYST pool address find the corresponding gauge address
     * @param dystPoolAddress Input address
     */
    function gaugeByDystPool(address dystPoolAddress)
        public
        view
        returns (address)
    {
        return dystopiaLens.gaugeAddressByPoolAddress(dystPoolAddress);
    }

    /**
     * @notice Given an penPool address find the corresponding staking rewards address
     * @param penPoolAddress Input address
     */
    function stakingRewardsByPenPool(address penPoolAddress)
        public
        view
        returns (address)
    {
        IPenPool penPool = IPenPool(penPoolAddress);
        address stakingAddress = penPool.stakingAddress();
        return stakingAddress;
    }

    /**
     * @notice Given a DYST pool address find the corresponding staking pool address
     * @param dystPoolAddress Input address
     */
    function stakingRewardsByDystPool(address dystPoolAddress)
        external
        view
        returns (address)
    {
        address penPoolAddress = penPoolByDystPool(dystPoolAddress);
        address stakingAddress = stakingRewardsByPenPool(penPoolAddress);
        return stakingAddress;
    }

    /**
     * @notice Determine whether or not a pool is a valid penPool
     */
    function isPenPool(address penPoolAddress) public view returns (bool) {
        return penPoolFactory.isPenPool(penPoolAddress);
    }

    /**
     * @notice Determine whether or not a given account address is a partner
     * @param userProxyAddress User proxy address
     */
    function isPartner(address userProxyAddress) public view returns (bool) {
        return
            IPartnersRewards(partnersRewardsPoolAddress).isPartner(
                userProxyAddress
            );
    }

    /**
     * @notice Determine whether or not a given user's proxy address is a partner
     * @param accountAddress User address
     */
    function isProxyPartner(address accountAddress) public view returns (bool) {
        address userProxyAddress = userProxyByAccount(accountAddress);
        return
            IPartnersRewards(partnersRewardsPoolAddress).isPartner(
                userProxyAddress
            );
    }

    /*******************************************************
     *                    Administrative
     *******************************************************/
    function setMigration(address fromPenPoolAddress, address toPenPoolAddress)
        public
        onlyTreasury
    {
        penPoolsMigrationMapping[fromPenPoolAddress] = toPenPoolAddress;
    }

    function setMigrations(
        address[] memory fromPenPoolsAddresses,
        address[] memory toPenPoolsAddresses
    ) external {
        require(
            fromPenPoolsAddresses.length == toPenPoolsAddresses.length,
            "Invalid inputs"
        );
        for (
            uint256 penPoolIndex;
            penPoolIndex < fromPenPoolsAddresses.length;
            penPoolIndex++
        ) {
            address fromPenPoolAddress = fromPenPoolsAddresses[penPoolIndex];
            address toPenPoolAddress = toPenPoolsAddresses[penPoolIndex];
            setMigration(fromPenPoolAddress, toPenPoolAddress);
        }
    }
}