// SPDX-License-Identifier: NONE

pragma solidity 0.8.11;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./ProxyImplementation.sol";
import "./GovernableImplementation.sol";

import "./interfaces/IPenPool.sol";
import "./interfaces/IVoterProxy.sol";
import "./interfaces/IPenPoolFactory.sol";
import "./interfaces/IPenLens.sol";
import "./interfaces/IPenDyst.sol";
import "./interfaces/IMultiRewards.sol";
import "./interfaces/ICvlPen.sol";
import "./interfaces/IGauge.sol";
import "./interfaces/IPen.sol";
import "./interfaces/IDystRouter.sol";

contract RewardsDistributor is GovernableImplementation, ProxyImplementation {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public voterProxy;

    address public penLockPool;

    address public penDystRewardsPoolAddress;

    address public penroseTeamAddress;

    address public treasuryAddress;

    uint256 public basis = 10000;

    uint256 public penRate = 500;

    uint256 public penDystRate = 1000;

    uint256 public treasuryRate = 1200;

    uint256 public treasuryDystRate = 300;

    // For PEN/FTM & penDYST/DYST LPs
    uint256 public ecosystemLPRate = 0;

    uint256 public penroseTeamRate = 800;

    uint256 public penroseTeamDystRate = 200;

    address[] public incentivizedPools;

    mapping(address => uint256) public incentivizedPoolWeights;

    uint256 incentivizedPoolWeightTotal;

    bool public partnersReceiveCvlPEN;

    address public penLensAddress;

    mapping(address => bool) public operator;

    event OperatorStatus(address candidate, bool status);

    modifier onlyGovernanceOrOperator() {
        require(
            operator[msg.sender] ||
                msg.sender == governanceAddress() ||
                msg.sender == voterProxy,
            "Only the governance or operator may perform this action"
        );
        _;
    }

    struct StakerStreams {
        uint256 penAmount;
        uint256 penDystAmount;
        uint256 treasuryAmount;
        uint256 LPAmount;
        uint256 partnerAmount;
        uint256 ecosystemLPAmount;
        uint256 penroseTeamAmount;
    }

    struct EcosystemLPWeights {
        address stakingAddress;
        uint256 weight;
    }

    address routerAddress;
    address native;

    /**
     * @notice Initialize proxy storage
     */
    function initializeProxyStorage(address _voterProxy)
        public
        checkProxyInitialized
    {
        voterProxy = _voterProxy;
        basis = 10000;

        penRate = 500;

        penDystRate = 1000;

        treasuryRate = 1200;

        penroseTeamRate = 800;

        treasuryDystRate = 300;

        penroseTeamDystRate = 200;
    }

    // Don't need name change since the one in proxy takes different inputs
    function initialize(
        address _penLockPool,
        address _penDystRewardsPoolAddress,
        address _penLensAddress
    ) external onlyGovernance {
        require(penLockPool == address(0), "Already initialized");

        penLockPool = _penLockPool;
        penDystRewardsPoolAddress = _penDystRewardsPoolAddress;

        penLensAddress = _penLensAddress;
    }

    function nativeInit(address _routerAddress, address _native)
        external
        onlyGovernance
    {
        routerAddress = _routerAddress;
        native = _native;
    }

    /* ========== Admin Actions ========== */

    function setOperator(address candidate, bool status)
        external
        onlyGovernance
    {
        operator[candidate] = status;
        emit OperatorStatus(candidate, status);
    }

    function setPenLockPool(address _penLockPool) external onlyGovernance {
        penLockPool = _penLockPool;
    }

    function setPenDystRewardsPool(address _penDystRewardsPoolAddress)
        external
        onlyGovernance
    {
        penDystRewardsPoolAddress = _penDystRewardsPoolAddress;
    }

    function setTreasuryRate(uint256 _treasuryRate) external onlyGovernance {
        treasuryRate = _treasuryRate;
    }

    function setTreasuryDystRate(uint256 _treasuryDystRate)
        external
        onlyGovernance
    {
        treasuryDystRate = _treasuryDystRate;
    }

    function setPenroseTeamRate(uint256 _penroseTeamRate)
        external
        onlyGovernance
    {
        penroseTeamRate = _penroseTeamRate;
    }

    function setPenroseTeamDystRate(uint256 _penroseTeamDystRate)
        external
        onlyGovernance
    {
        penroseTeamDystRate = _penroseTeamDystRate;
    }

    function setTreasuryAddress(address _treasuryAddress)
        external
        onlyGovernance
    {
        treasuryAddress = _treasuryAddress;
    }

    function setPenroseTeamAddress(address _penroseTeamAddress) external {
        if (penroseTeamAddress != address(0)) {
            require(msg.sender == penroseTeamAddress, "Only Penrose Team");
        } else {
            require(msg.sender == governanceAddress(), "Only Governance");
        }
        penroseTeamAddress = _penroseTeamAddress;
    }

    function setPartnersReceiveCvlPEN(bool _partnersReceiveCvlPEN)
        external
        onlyGovernance
    {
        partnersReceiveCvlPEN = _partnersReceiveCvlPEN;
    }

    function setEcosystemLPRewards(
        uint256 _ecosystemLPRate,
        address[] calldata _incentivizedPools,
        uint256[] calldata _incentivizedPoolWeights
    ) external onlyGovernance {
        require(
            _incentivizedPools.length == _incentivizedPoolWeights.length,
            "Different amounts of pools and weights"
        );
        ecosystemLPRate = _ecosystemLPRate;
        incentivizedPools = _incentivizedPools;
        uint256 _incentivizedPoolWeightTotal;
        for (uint256 i; i < _incentivizedPools.length; i++) {
            incentivizedPoolWeights[
                _incentivizedPools[i]
            ] = _incentivizedPoolWeights[i];
            _incentivizedPoolWeightTotal += _incentivizedPoolWeights[i];
        }
        incentivizedPoolWeightTotal = _incentivizedPoolWeightTotal;
    }

    /* ========== Staking Pool Actions ========== */

    function setRewardPoolOwner(address stakingAddress, address _owner)
        external
        onlyGovernance
    {
        IMultiRewards(stakingAddress).nominateNewOwner(_owner);
    }

    function addReward(
        address stakingAddress,
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external onlyGovernanceOrOperator {
        IMultiRewards(stakingAddress).addReward(
            _rewardsToken,
            address(this),
            _rewardsDuration
        );
    }

    function notifyRewardAmount(
        address stakingAddress,
        address rewardTokenAddress,
        uint256 amount
    ) external onlyGovernanceOrOperator {
        if (amount == 0) {
            return;
        }
        address dystAddress = IPenLens(penLensAddress).dystAddress(); //gas savings on ssload

        StakerStreams memory rewardStreams; //to avoid stack too deep

        // All bribes and fees go to penDYST stakers and partners who stake penDYST if it's whitelisted in tokensAllowlist
        // stored in rewardsDistributor if not whitelist (just so we don't transfer weird tokens down the line)
        // this also handles DYST rebases that's passed here as penDYST
        if (rewardTokenAddress != dystAddress) {
            if (
                IPenLens(penLensAddress)
                    .tokensAllowlist()
                    .tokenIsAllowedInPools(rewardTokenAddress)
            ) {
                (
                    rewardStreams.penDystAmount,
                    rewardStreams.partnerAmount
                ) = calculatePartnerSlice(amount);
                _notifyRewardAmount(
                    penDystRewardsPoolAddress,
                    rewardTokenAddress,
                    rewardStreams.penDystAmount
                );
                _notifyRewardAmount(
                    partnersRewardsPoolAddress(),
                    rewardTokenAddress,
                    rewardStreams.partnerAmount
                );
            }

            return;
        }

        // If it's DYST, distribute DYST at 10% to penDYST stakers (and partners), 5% to PEN stakers, 3% to treasury and 2% to penrose team
        // x% to PEN/FTM & penDYST/DYST LPs, and rest to LP (84%)
        address penDystAddress = IPenLens(penLensAddress).penDystAddress();
        address penAddress = IPenLens(penLensAddress).penAddress();
        IPenDyst penDyst = IPenDyst(penDystAddress);

        rewardStreams.penAmount = amount.mul(penRate).div(basis); //5%
        rewardStreams.penDystAmount = amount.mul(penDystRate).div(basis); //10%
        rewardStreams.treasuryAmount = amount.mul(treasuryDystRate).div(basis); //3%
        rewardStreams.penroseTeamAmount = amount.mul(penroseTeamDystRate).div(
            basis
        ); //2%
        rewardStreams.ecosystemLPAmount = amount.mul(ecosystemLPRate).div(
            basis
        ); //x%

        rewardStreams.LPAmount = amount
            .sub(rewardStreams.penAmount)
            .sub(rewardStreams.penDystAmount)
            .sub(rewardStreams.treasuryAmount)
            .sub(rewardStreams.penroseTeamAmount)
            .sub(rewardStreams.ecosystemLPAmount);

        // Distribute DYST claimed
        _notifyRewardAmountToNative(
            stakingAddress,
            dystAddress,
            rewardStreams.LPAmount
        );

        // Ecosystem LP and penDYST stakers and Partners get DYST emission in penDYST
        uint256 amountToLock = rewardStreams.ecosystemLPAmount.add(
            rewardStreams.penAmount
        );
        IERC20(dystAddress).approve(voterProxy, amountToLock);
        IVoterProxy(voterProxy).lockDyst(amountToLock);

        //distribute penDYST to vlPEN
        _notifyRewardAmount(
            penLockPool,
            penDystAddress,
            rewardStreams.penAmount
        );

        // Distribute ecosystem LP amount in penDYST according to set weights
        if (rewardStreams.ecosystemLPAmount > 0) {
            uint256 incentivizedPoolAmount;
            for (uint256 i; i < incentivizedPools.length; i++) {
                incentivizedPoolAmount = rewardStreams
                    .ecosystemLPAmount
                    .mul(basis)
                    .mul(incentivizedPoolWeights[incentivizedPools[i]])
                    .div(incentivizedPoolWeightTotal)
                    .div(basis);
                _notifyRewardAmount(
                    incentivizedPools[i],
                    penDystAddress,
                    incentivizedPoolAmount
                );
            }
        }

        _convertTokenToNativeAndTransfer(
            treasuryAddress,
            dystAddress,
            rewardStreams.treasuryAmount
        );

        _convertTokenToNativeAndTransfer(
            penroseTeamAddress,
            dystAddress,
            rewardStreams.penroseTeamAmount
        );

        // For penDYST stakers, distribute DYST emission as DYST
        (
            rewardStreams.penDystAmount,
            rewardStreams.partnerAmount
        ) = calculatePartnerSlice(rewardStreams.penDystAmount);
        _notifyRewardAmount(
            penDystRewardsPoolAddress,
            dystAddress,
            rewardStreams.penDystAmount
        );
        _notifyRewardAmount(
            partnersRewardsPoolAddress(),
            dystAddress,
            rewardStreams.partnerAmount
        );

        // Mint PEN and distribute according to tokenomics
        // penDYST lockers get PEN = minted * (PENyst.totalSupply()/DYST.totalSupply())
        // this ensures penDYST lockers are not diluted against other DYST stakers
        // and prevents the %PEN emission penDYST stakers get isn't diluted below penDYST/DYST.totalSupply()
        // partners get theirs with at a floor ratio of 2*penDYST/DYST, until 25%, which reverts back to normal
        // penDYST lockers altogether are guaranteed a 5% floor in emissions
        // partners get their PEN in locked form, this is acheived with vlPEN coupons (cvlPEN) since vlPEN itself isn't transferrable
        IPen(penAddress).mint(address(this), amount);

        rewardStreams.penroseTeamAmount = amount.mul(penroseTeamRate).div(
            basis
        );
        IERC20(penAddress).safeTransfer(
            penroseTeamAddress,
            rewardStreams.penroseTeamAmount
        );

        rewardStreams.treasuryAmount = amount.mul(treasuryRate).div(basis);
        IERC20(penAddress).safeTransfer(
            treasuryAddress,
            rewardStreams.treasuryAmount
        );

        amount = amount.sub(rewardStreams.penroseTeamAmount);
        amount = amount.sub(rewardStreams.treasuryAmount);
        {
            uint256 penDystRatioOfDYST = penDyst.totalSupply().mul(1e18).div(
                IERC20(dystAddress).totalSupply()
            ); // basis is not precise enough here, using 1e18

            (
                uint256 nonpartnerRatioOfDYST,
                uint256 partnersRatioOfDYST
            ) = calculatePartnerSlice(penDystRatioOfDYST);
            partnersRatioOfDYST = partnersRatioOfDYST.mul(2); //partners get minted*(partner penDYST/DYST)*2 as a floor until 25%
            if (partnersRatioOfDYST.mul(basis).div(1e18) > 2500) {
                partnersRatioOfDYST = (
                    partnersRatioOfDYST.div(2).sub(
                        (uint256(1250).mul(1e18)).div(basis)
                    )
                ).mul(7500).div(8750).add(uint256(2500).mul(1e18).div(basis)); // if above 25%, partnersRatioOfDYST = ((partner penDYST/DYST supply) - 0.125) * 0.75/0.875 + 0.25
            } else if (
                // penDYST stakers always get at least 5% of PEN emissions
                (nonpartnerRatioOfDYST.add(partnersRatioOfDYST)).mul(basis).div(
                    1e18
                ) < 500
            ) {
                nonpartnerRatioOfDYST = uint256(500).mul(1e18).div(basis).div(
                    3
                ); // Partners always have 2x weight against nonpartners if they're only getting 5% (5% < 25%)
                partnersRatioOfDYST = nonpartnerRatioOfDYST.mul(2);
            }

            rewardStreams.penDystAmount = amount.mul(nonpartnerRatioOfDYST).div(
                1e18
            );
            rewardStreams.partnerAmount = amount.mul(partnersRatioOfDYST).div(
                1e18
            );
        }

        _notifyRewardAmount(
            penDystRewardsPoolAddress,
            penAddress,
            rewardStreams.penDystAmount
        );

        if (partnersReceiveCvlPEN) {
            // Mint cvlPEN and distribute to partnersRewardsPool
            address _cvlPenAddress = cvlPenAddress();
            IERC20(penAddress).approve(
                _cvlPenAddress,
                rewardStreams.partnerAmount
            );
            ICvlPen(_cvlPenAddress).mint(
                address(this),
                rewardStreams.partnerAmount
            );
            _notifyRewardAmount(
                partnersRewardsPoolAddress(),
                _cvlPenAddress,
                rewardStreams.partnerAmount
            );
        } else {
            _notifyRewardAmount(
                partnersRewardsPoolAddress(),
                penAddress,
                rewardStreams.partnerAmount
            );
        }

        rewardStreams.LPAmount = amount.sub(rewardStreams.penDystAmount).sub(
            rewardStreams.partnerAmount
        );
        _notifyRewardAmount(stakingAddress, penAddress, rewardStreams.LPAmount);
    }

    /**
     * @notice To distribute stored bribed tokens that's newly whitelisted to penDYST stakers and Partners
     * @param  rewardTokenAddress reward token address
     * @dev no auth needed since it only transfers whitelisted addresses
     */
    function notifyStoredRewardAmount(address rewardTokenAddress) external {
        require(
            IPenLens(penLensAddress).tokensAllowlist().tokenIsAllowedInPools(
                rewardTokenAddress
            ),
            "Token is not allowed in reward pools"
        );
        // Get amount of rewards stored in this address
        uint256 amount = IERC20(rewardTokenAddress).balanceOf(address(this));

        StakerStreams memory rewardStreams;

        (
            rewardStreams.penDystAmount,
            rewardStreams.partnerAmount
        ) = calculatePartnerSlice(amount);

        _notifyRewardAmount(
            penDystRewardsPoolAddress,
            rewardTokenAddress,
            rewardStreams.penDystAmount
        );

        _notifyRewardAmount(
            partnersRewardsPoolAddress(),
            rewardTokenAddress,
            rewardStreams.partnerAmount
        );
    }

    function _notifyRewardAmount(
        address stakingAddress,
        address rewardToken,
        uint256 amount
    ) internal {
        if (amount == 0) {
            return;
        }
        address rewardsDistributorAddress = IMultiRewards(stakingAddress)
            .rewardData(rewardToken)
            .rewardsDistributor;
        bool rewardExists = rewardsDistributorAddress != address(0);
        if (!rewardExists) {
            IMultiRewards(stakingAddress).addReward(
                rewardToken,
                address(this),
                604800 // 1 week
            );
        }

        IERC20(rewardToken).approve(stakingAddress, amount);
        IMultiRewards(stakingAddress).notifyRewardAmount(rewardToken, amount);
    }

    function _notifyRewardAmountToNative(
        address stakingAddress,
        address rewardToken,
        uint256 amount
    ) internal {
        if (amount == 0) {
            return;
        }
        address dystAddress = IPenLens(penLensAddress).dystAddress();

        if (rewardToken == dystAddress) {
            IDystRouter01.Route[] memory path;
            path = new IDystRouter01.Route[](1);
            path[0].from = dystAddress;
            path[0].to = native;
            path[0].stable = false;
            IERC20(rewardToken).approve(routerAddress, amount);
            uint256[] memory minAmtArray = IDystRouter01(routerAddress)
                .getAmountsOut(amount, path);
            uint256 minAmt = minAmtArray[minAmtArray.length - 1];
            minAmt = minAmt.sub(minAmt.div(100));
            uint256[] memory nativeAmount = IDystRouter01(routerAddress)
                .swapExactTokensForTokens(
                    amount,
                    minAmt,
                    path,
                    address(this),
                    block.timestamp + 300
                );
            address rewardsDistributorAddress = IMultiRewards(stakingAddress)
                .rewardData(native)
                .rewardsDistributor;
            bool rewardExists = rewardsDistributorAddress != address(0);
            if (!rewardExists) {
                IMultiRewards(stakingAddress).addReward(
                    native,
                    address(this),
                    604800 // 1 week
                );
            }

            IERC20(native).approve(
                stakingAddress,
                nativeAmount[nativeAmount.length - 1]
            );
            IMultiRewards(stakingAddress).notifyRewardAmount(
                native,
                nativeAmount[nativeAmount.length - 1]
            );
        }
    }

    function _convertTokenToNativeAndTransfer(
        address recipient,
        address rewardToken,
        uint256 amount
    ) internal {
        if (amount == 0) {
            return;
        }
        address dystAddress = IPenLens(penLensAddress).dystAddress();

        if (rewardToken == dystAddress) {
            IDystRouter01.Route[] memory path;
            path = new IDystRouter01.Route[](1);
            path[0].from = dystAddress;
            path[0].to = native;
            path[0].stable = false;
            IERC20(rewardToken).approve(routerAddress, amount);
            uint256[] memory minAmtArray = IDystRouter01(routerAddress)
                .getAmountsOut(amount, path);
            uint256 minAmt = minAmtArray[minAmtArray.length - 1];
            minAmt = minAmt.sub(minAmt.div(100));
            minAmt = (minAmt * 99) / 100;
            uint256[] memory nativeAmount = IDystRouter01(routerAddress)
                .swapExactTokensForTokens(
                    amount,
                    0,
                    path,
                    recipient,
                    block.timestamp + 300
                );
        }
    }

    function setRewardsDuration(
        address stakingAddress,
        address _rewardsToken,
        uint256 _rewardsDuration
    ) external onlyGovernanceOrOperator {
        IMultiRewards(stakingAddress).setRewardsDuration(
            _rewardsToken,
            _rewardsDuration
        );
    }

    function harvestAndDistributeLPRewards(address[] calldata penPools)
        external
        onlyGovernanceOrOperator
    {
        address gauge;
        address staking;

        for (uint256 i; i < penPools.length; i++) {
            gauge = IPenPool(penPools[i]).gaugeAddress();
            staking = IPenPool(penPools[i]).stakingAddress();
            uint256 rewardsLength = IGauge(gauge).rewardTokensLength();
            address[] memory rewards = new address[](rewardsLength);

            for (uint256 j; j < rewardsLength; j++) {
                rewards[j] = IGauge(gauge).rewardTokens(j);
            }

            IVoterProxy(voterProxy).getRewardFromGauge(penPools[i], rewards);
        }
    }

    /* ========== Token Recovery ========== */

    function recoverERC20FromStaking(
        address stakingAddress,
        address tokenAddress
    ) external onlyGovernanceOrOperator {
        uint256 amount = IERC20(tokenAddress).balanceOf(stakingAddress);
        IMultiRewards(stakingAddress).recoverERC20(tokenAddress, amount);
        recoverERC20(tokenAddress);
    }

    function recoverERC20(address tokenAddress)
        public
        onlyGovernanceOrOperator
    {
        uint256 amount = IERC20(tokenAddress).balanceOf(address(this));
        IERC20(tokenAddress).safeTransfer(msg.sender, amount);
    }

    /* ========== Helper View Functions ========== */

    function penLens() internal view returns (IPenLens) {
        return IPenLens(penLensAddress);
    }

    function partnersRewardsPoolAddress() internal view returns (address) {
        return penLens().partnersRewardsPoolAddress();
    }

    function cvlPenAddress() internal view returns (address) {
        return penLens().cvlPenAddress();
    }

    function calculatePartnerSlice(uint256 amount)
        internal
        view
        returns (uint256 penDystAmount, uint256 partnerAmount)
    {
        uint256 stakedSpenDyst = IMultiRewards(penDystRewardsPoolAddress)
            .totalSupply();
        uint256 stakedPpenDyst = IMultiRewards(partnersRewardsPoolAddress())
            .totalSupply();

        uint256 totalStakedPenDyst = stakedSpenDyst.add(stakedPpenDyst);
        totalStakedPenDyst = (totalStakedPenDyst != 0 ? totalStakedPenDyst : 1); //no divide by 0

        penDystAmount = amount
            .mul(basis)
            .mul(stakedSpenDyst)
            .div(totalStakedPenDyst)
            .div(basis);

        partnerAmount = amount - penDystAmount;
    }
}
