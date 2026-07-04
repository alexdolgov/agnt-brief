// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "./lib/SafeMath.sol";
import "./interfaces/IERC20.sol";
import "./STARTPresale.sol";
import "./BSCstarterStaking.sol";
import "./BSCstarterInfo.sol";

interface IPancakeSwapV2Router02 {
    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        returns (
            uint256 amountToken,
            uint256 amountETH,
            uint256 liquidity
        );
}

contract BSCstarterPresale {
    using SafeMath for uint256;

    address payable internal bscsFactoryAddress; // address that creates the presale contracts
    address payable public bscsDevAddress; // address where dev fees will be transferred to
    address public bscsLiqLockAddress; // address where LP tokens will be locked
    BSCstarterStaking public bscsStakingPool;
    BSCstarterInfo public bscStarterInfo;

    IERC20 public token; // token that will be sold
    IERC20 public bscsToken; // system token
    address payable public presaleCreatorAddress; // address where percentage of invested wei will be transferred to
    address public unsoldTokensDumpAddress; // address where unsold tokens will be transferred to

    mapping(address => uint256) public investments; // total wei invested per address
    mapping(address => bool) public whitelistedAddresses; // addresses eligible in presale
    mapping(address => bool) public claimed; // if true, it means investor already claimed the tokens or got a refund

    uint256 private bscsDevFeePercentage; // dev fee to support the development of BSCstarter
    uint256 private bscsMinDevFeeInWei; // minimum fixed dev fee to support the development of BSCstarter
    uint256 public bscsId; // used for fetching presale without referencing its address
    uint256 public presaleGrantId; // tracks any incubator grants given

    uint256 public totalInvestorsCount; // total investors count
    uint256 public presaleCreatorClaimWei; // wei to transfer to presale creator per investor claim
    uint256 public presaleCreatorClaimTime; // time when presale creator can collect funds raise
    uint256 public totalCollectedWei; // total wei collected
    uint256 public totalTokens; // total tokens to be sold
    uint256 public tokensLeft; // available tokens to be sold
    uint256 public tokenPriceInWei; // token presale wei price per 1 token
    uint256 public hardCapInWei; // maximum wei amount that can be invested in presale
    uint256 public softCapInWei; // minimum wei amount to invest in presale, if not met, invested wei will be returned
    uint256 public maxInvestInWei; // maximum wei amount that can be invested per wallet address
    uint256 public minInvestInWei; // minimum wei amount that can be invested per wallet address
    uint256 public openTime; // time when presale starts, investing is allowed
    uint256 public closeTime; // time when presale closes, investing is not allowed
    uint256 public cakeListingPriceInWei; // token price when listed in PancakeSwap
    uint256 public cakeLiquidityAddingTime; // time when adding of liquidity in PancakeSwap starts, investors can claim their tokens afterwards
    uint256 public cakeLPTokensLockDurationInDays; // how many days after the liquity is added the presale creator can unlock the LP tokens
    uint256 public cakeLiquidityPercentageAllocation; // how many percentage of the total invested wei that will be added as liquidity

    mapping(address => uint256) public voters; // addresses voting on sale
    uint256 public noVotes; // total number of no votes
    uint256 public yesVotes; // total number of yes votes
    uint256 public minYesVotesThreshold = 100000 * 1e18; // minimum number of yes votes needed to pass
    uint256 public minVoterBSCSBalance = 1000 * 1e18; // minimum number of BSCS tokens to hold to vote
    uint256 public minInvestorBSCSBalance; // minimum number of BSCS tokens to hold to invest
    uint256 public minRewardQualifyBal; // min amount to HODL to qualify for token discounts
    uint256 public minRewardQualifyPercentage; // percentage of discount on tokens for qualifying holders

    bool public cakeLiquidityAdded = false; // if true, liquidity is added in PancakeSwap and lp tokens are locked
    bool public onlyWhitelistedAddressesAllowed = false; // if true, only whitelisted addresses can invest
    bool public bscsDevFeesExempted = false; // if true, presale will be exempted from dev fees
    bool public presaleCancelled = false; // if true, investing will not be allowed, investors can withdraw, presale creator can withdraw their tokens

    bytes32 public saleTitle;
    bytes32 public linkTelegram;
    bytes32 public linkTwitter;
    bytes32 public linkGithub;
    bytes32 public linkWebsite;
    bytes32 public linkLogo;

    constructor(
        address _bscsFactoryAddress,
        address _bscStarterInfo,
        address _bscsDevAddress,
        uint256 _minRewardQualifyBal,
        uint256 _minRewardQualifyPercentage
    ) public {
        require(_bscsFactoryAddress != address(0));
        require(_bscsDevAddress != address(0));

        bscsFactoryAddress = payable(_bscsFactoryAddress);
        bscsDevAddress = payable(_bscsDevAddress);
        minRewardQualifyBal = _minRewardQualifyBal;
        minRewardQualifyPercentage = _minRewardQualifyPercentage;
        bscStarterInfo = BSCstarterInfo(_bscStarterInfo);
    }

    modifier onlyBscsDev() {
        require(
            bscsFactoryAddress == msg.sender || bscsDevAddress == msg.sender
        );
        _;
    }

    modifier onlyPresaleCreatorOrBscsFactory() {
        require(
            presaleCreatorAddress == msg.sender ||
                bscsFactoryAddress == msg.sender,
            "Not presale creator or factory"
        );
        _;
    }

    modifier onlyPresaleCreatorOrBscsDev() {
        require(
            presaleCreatorAddress == msg.sender || bscsDevAddress == msg.sender,
            "Not presale creator or dev"
        );
        _;
    }

    modifier onlyPresaleCreator() {
        require(presaleCreatorAddress == msg.sender, "Not presale creator");
        _;
    }

    modifier whitelistedAddressOnly() {
        require(
            !onlyWhitelistedAddressesAllowed ||
                whitelistedAddresses[msg.sender],
            "Address not whitelisted"
        );
        _;
    }

    modifier presaleIsNotCancelled() {
        require(!presaleCancelled, "Cancelled");
        _;
    }

    modifier investorOnly() {
        require(investments[msg.sender] > 0, "Not an investor");
        _;
    }

    modifier notYetClaimedOrRefunded() {
        require(!claimed[msg.sender], "Already claimed or refunded");
        _;
    }

    modifier votesPassed() {
        require(
            yesVotes > noVotes && yesVotes >= minYesVotesThreshold,
            "Votes not passed"
        );
        _;
    }

    function setAddressInfo(
        address _presaleCreator,
        address _tokenAddress,
        address _bscsTokenAddress,
        address _unsoldTokensDumpAddress
    ) external onlyPresaleCreatorOrBscsFactory {
        require(_presaleCreator != address(0));
        require(_tokenAddress != address(0));
        require(_unsoldTokensDumpAddress != address(0));

        presaleCreatorAddress = payable(_presaleCreator);
        token = IERC20(_tokenAddress);
        bscsToken = IERC20(_bscsTokenAddress);
        unsoldTokensDumpAddress = _unsoldTokensDumpAddress;
    }

    function setGeneralInfo(
        uint256 _totalTokens,
        uint256 _tokenPriceInWei,
        uint256 _hardCapInWei,
        uint256 _softCapInWei,
        uint256 _maxInvestInWei,
        uint256 _minInvestInWei,
        uint256 _openTime,
        uint256 _closeTime,
        uint256 _minInvestorBSCSBalance
    ) external onlyPresaleCreatorOrBscsFactory {
        require(_totalTokens > 0);
        require(_tokenPriceInWei > 0);
        require(_openTime > 0);
        require(_closeTime > 0);
        require(_hardCapInWei > 0);

        // Hard cap > (token amount * token price)
        require(_hardCapInWei <= _totalTokens.mul(_tokenPriceInWei));
        // Soft cap > to hard cap
        require(_softCapInWei <= _hardCapInWei);
        //  Min. wei investment > max. wei investment
        require(_minInvestInWei <= _maxInvestInWei);
        // Open time >= close time
        require(_openTime < _closeTime);

        totalTokens = _totalTokens;
        tokensLeft = _totalTokens;
        tokenPriceInWei = _tokenPriceInWei;
        hardCapInWei = _hardCapInWei;
        softCapInWei = _softCapInWei;
        maxInvestInWei = _maxInvestInWei;
        minInvestInWei = _minInvestInWei;
        openTime = _openTime;
        closeTime = _closeTime;
        minInvestorBSCSBalance = _minInvestorBSCSBalance;
    }

    function setPancakeSwapInfo(
        uint256 _cakeListingPriceInWei,
        uint256 _cakeLiquidityAddingTime,
        uint256 _cakeLPTokensLockDurationInDays,
        uint256 _cakeLiquidityPercentageAllocation
    ) external onlyPresaleCreatorOrBscsFactory {
        require(_cakeListingPriceInWei > 0);
        require(_cakeLiquidityAddingTime > 0);
        require(_cakeLPTokensLockDurationInDays > 0);
        require(_cakeLiquidityPercentageAllocation > 0);

        require(closeTime > 0);
        // Listing time < close time
        require(_cakeLiquidityAddingTime >= closeTime);

        cakeListingPriceInWei = _cakeListingPriceInWei;
        cakeLiquidityAddingTime = _cakeLiquidityAddingTime;
        cakeLPTokensLockDurationInDays = _cakeLPTokensLockDurationInDays;
        cakeLiquidityPercentageAllocation = _cakeLiquidityPercentageAllocation;
    }

    function setStringInfo(
        bytes32 _saleTitle,
        bytes32 _linkTelegram,
        bytes32 _linkGithub,
        bytes32 _linkTwitter,
        bytes32 _linkWebsite,
        bytes32 _linkLogo
    ) external onlyPresaleCreatorOrBscsFactory {
        saleTitle = _saleTitle;
        linkTelegram = _linkTelegram;
        linkGithub = _linkGithub;
        linkTwitter = _linkTwitter;
        linkWebsite = _linkWebsite;
        linkLogo = _linkLogo;
    }

    function setBscsInfo(
        address _bscsLiqLockAddress,
        uint256 _bscsDevFeePercentage,
        uint256 _bscsMinDevFeeInWei,
        uint256 _bscsId,
        uint256 _presaleGrantId,
        address _bscsStakingPool
    ) external onlyBscsDev {
        bscsLiqLockAddress = _bscsLiqLockAddress;
        bscsDevFeePercentage = _bscsDevFeePercentage;
        bscsMinDevFeeInWei = _bscsMinDevFeeInWei;
        bscsId = _bscsId;
        presaleGrantId = _presaleGrantId;
        bscsStakingPool = BSCstarterStaking(_bscsStakingPool);
    }

    function setBscsDevFeesExempted(bool _bscsDevFeesExempted)
        external
        onlyBscsDev
    {
        bscsDevFeesExempted = _bscsDevFeesExempted;
    }

    function setOnlyWhitelistedAddressesAllowed(
        bool _onlyWhitelistedAddressesAllowed
    ) external onlyPresaleCreatorOrBscsFactory {
        onlyWhitelistedAddressesAllowed = _onlyWhitelistedAddressesAllowed;
    }

    function setMinVoterBSCSBalance(uint256 _minVoterBSCSBalance)
        external
        onlyBscsDev
    {
        require(_minVoterBSCSBalance >= 10 * 1e18);
        minVoterBSCSBalance = _minVoterBSCSBalance * 1e18;
    }

    function setMinYesVotesThreshold(uint256 _minYesVotesThreshold)
        external
        onlyBscsDev
    {
        require(_minYesVotesThreshold >= 10000 * 1e18); // cannot be < 1% of supply
        minYesVotesThreshold = _minYesVotesThreshold * 1e18;
    }

    function addWhitelistedAddresses(address[] calldata _whitelistedAddresses)
        external
        onlyPresaleCreatorOrBscsFactory
    {
        onlyWhitelistedAddressesAllowed = _whitelistedAddresses.length > 0;
        for (uint256 i = 0; i < _whitelistedAddresses.length; i++) {
            whitelistedAddresses[_whitelistedAddresses[i]] = true;
        }
    }

    function getTokenAmount(uint256 _weiAmount)
        internal
        view
        returns (uint256)
    {
        uint256 balance;
        uint256 lastStakedTimestamp;
        uint256 lastUnstakedTimestamp;
        (balance, lastStakedTimestamp, lastUnstakedTimestamp) = bscsStakingPool
            .accountInfos(msg.sender);
        uint256 minStakeTime = bscStarterInfo.getMinStakeTime();
        uint256 bscsBalance = bscStarterInfo.getLockedBalance(msg.sender);

        if (lastStakedTimestamp + minStakeTime <= block.timestamp) {
            bscsBalance = bscsBalance.add(balance);
        }
        if (bscsBalance >= minRewardQualifyBal) {
            uint256 pctQualifyingDiscount =
                tokenPriceInWei.mul(minRewardQualifyPercentage).div(100);
            return
                _weiAmount.mul(1e18).div(
                    tokenPriceInWei.sub(pctQualifyingDiscount)
                );
        } else {
            return _weiAmount.mul(1e18).div(tokenPriceInWei);
        }
    }

    function invest()
        public
        payable
        whitelistedAddressOnly
        presaleIsNotCancelled
        votesPassed
    {
        require(block.timestamp >= openTime, "Not yet opened");
        require(block.timestamp < closeTime, "Closed");
        require(totalCollectedWei < hardCapInWei, "Hard cap reached");
        require(tokensLeft > 0);
        require(msg.value > 0);

        uint256 balance;
        uint256 lastStakedTimestamp;
        uint256 lastUnstakedTimestamp;
        (balance, lastStakedTimestamp, lastUnstakedTimestamp) = bscsStakingPool
            .accountInfos(msg.sender);
        uint256 minStakeTime = bscStarterInfo.getMinStakeTime();
        uint256 bscsBalance = bscStarterInfo.getLockedBalance(msg.sender);

        if (lastStakedTimestamp + minStakeTime <= block.timestamp) {
            bscsBalance = bscsBalance.add(balance);
        }
        if (bscsBalance >= minRewardQualifyBal) {
            // apply discount to qualifying hodlers
            uint256 pctQualifyingDiscount =
                tokenPriceInWei.mul(minRewardQualifyPercentage).div(100);
            require(
                msg.value <=
                    tokensLeft
                        .mul(tokenPriceInWei.sub(pctQualifyingDiscount))
                        .div(1e18),
                "Not enough tokens left"
            );
        } else {
            require(
                msg.value <= tokensLeft.mul(tokenPriceInWei).div(1e18),
                "Not enough tokens left"
            );
        }
        uint256 totalInvestmentInWei = investments[msg.sender].add(msg.value);
        require(
            totalInvestmentInWei >= minInvestInWei ||
                totalCollectedWei >= hardCapInWei.sub(1 ether),
            "Min investment not reached"
        );
        require(
            maxInvestInWei == 0 || totalInvestmentInWei <= maxInvestInWei,
            "Max investment reached"
        );

        if (minInvestorBSCSBalance > 0) {
            require(
                bscsBalance >= minInvestorBSCSBalance,
                "Not enough BSCS on account"
            );
        }

        if (investments[msg.sender] == 0) {
            totalInvestorsCount = totalInvestorsCount.add(1);
        }

        totalCollectedWei = totalCollectedWei.add(msg.value);
        investments[msg.sender] = totalInvestmentInWei;
        tokensLeft = tokensLeft.sub(getTokenAmount(msg.value));
    }

    receive() external payable {
        invest();
    }

    function addLiquidityAndLockLPTokens() external presaleIsNotCancelled {
        require(totalCollectedWei > 0);
        require(!cakeLiquidityAdded, "Liquidity already added");
        require(
            !onlyWhitelistedAddressesAllowed ||
                whitelistedAddresses[msg.sender] ||
                msg.sender == presaleCreatorAddress,
            "Not whitelisted or not presale creator"
        );

        if (
            totalCollectedWei >= hardCapInWei.sub(1 ether) &&
            block.timestamp < cakeLiquidityAddingTime
        ) {
            require(msg.sender == presaleCreatorAddress, "Not presale creator");
        } else if (block.timestamp >= cakeLiquidityAddingTime) {
            require(
                msg.sender == presaleCreatorAddress ||
                    investments[msg.sender] > 0,
                "Not presale creator or investor"
            );
            require(totalCollectedWei >= softCapInWei, "Soft cap not reached");
        } else {
            revert("Liquidity cannot be added yet");
        }

        cakeLiquidityAdded = true;

        uint256 finalTotalCollectedWei = totalCollectedWei;
        uint256 bscsDevFeeInWei;
        if (!bscsDevFeesExempted) {
            uint256 pctDevFee =
                finalTotalCollectedWei.mul(bscsDevFeePercentage).div(100);
            bscsDevFeeInWei = pctDevFee > bscsMinDevFeeInWei ||
                bscsMinDevFeeInWei >= finalTotalCollectedWei
                ? pctDevFee
                : bscsMinDevFeeInWei;
        }
        if (bscsDevFeeInWei > 0) {
            finalTotalCollectedWei = finalTotalCollectedWei.sub(
                bscsDevFeeInWei
            );
            bscsDevAddress.transfer(bscsDevFeeInWei);
            // factory manages BSCS hodlers fund where they can claim earned BNB rewards
            finalTotalCollectedWei = finalTotalCollectedWei.sub(
                bscsDevFeeInWei
            );
            bscsFactoryAddress.transfer(bscsDevFeeInWei);
        }

        uint256 liqPoolEthAmount =
            finalTotalCollectedWei.mul(cakeLiquidityPercentageAllocation).div(
                100
            );
        uint256 liqPoolTokenAmount =
            liqPoolEthAmount.mul(1e18).div(cakeListingPriceInWei);

        IPancakeSwapV2Router02 pancakeSwapRouter =
            IPancakeSwapV2Router02(
                address(bscStarterInfo.getPancakeSwapRouter())
            );

        token.approve(address(pancakeSwapRouter), liqPoolTokenAmount);

        pancakeSwapRouter.addLiquidityETH{value: liqPoolEthAmount}(
            address(token),
            liqPoolTokenAmount,
            0,
            0,
            bscsLiqLockAddress,
            block.timestamp.add(15 minutes)
        );

        presaleCreatorClaimWei = address(this).balance.mul(1e18).div(
            totalInvestorsCount.mul(1e18)
        );
        presaleCreatorClaimTime = block.timestamp + 1 days;
    }

    function vote(bool yes) external presaleIsNotCancelled {
        uint256 balance;
        uint256 lastStakedTimestamp;
        uint256 lastUnstakedTimestamp;
        (balance, lastStakedTimestamp, lastUnstakedTimestamp) = bscsStakingPool
            .accountInfos(msg.sender);
        uint256 minStakeTime = bscStarterInfo.getMinStakeTime();
        uint256 voterBalance = bscStarterInfo.getLockedBalance(msg.sender);

        if (lastStakedTimestamp + minStakeTime <= block.timestamp) {
            voterBalance = voterBalance.add(balance);
        }

        require(voterBalance >= minVoterBSCSBalance, "Not enough BSCS to vote");
        require(voters[msg.sender] == 0, "Vote already casted");

        voters[msg.sender] = voterBalance;
        if (yes) {
            yesVotes = yesVotes.add(voterBalance);
        } else {
            noVotes = noVotes.add(voterBalance);
        }
    }

    function claimTokens()
        external
        whitelistedAddressOnly
        presaleIsNotCancelled
        investorOnly
        notYetClaimedOrRefunded
    {
        require(cakeLiquidityAdded, "Liquidity not yet added");

        claimed[msg.sender] = true; // make sure this goes first before transfer to prevent reentrancy
        token.transfer(msg.sender, getTokenAmount(investments[msg.sender]));

        uint256 balance = address(this).balance;
        if (balance > 0) {
            uint256 funds =
                presaleCreatorClaimWei > balance
                    ? balance
                    : presaleCreatorClaimWei;
            presaleCreatorAddress.transfer(funds);
        }
    }

    function getRefund()
        external
        whitelistedAddressOnly
        investorOnly
        notYetClaimedOrRefunded
    {
        if (!presaleCancelled) {
            require(block.timestamp >= openTime, "Not yet opened");
            require(block.timestamp >= closeTime, "Not yet closed");
            require(softCapInWei > 0, "No soft cap");
            require(totalCollectedWei < softCapInWei, "Soft cap reached");
        }

        claimed[msg.sender] = true; // make sure this goes first before transfer to prevent reentrancy
        uint256 investment = investments[msg.sender];
        uint256 presaleBalance = address(this).balance;
        require(presaleBalance > 0);

        if (investment > presaleBalance) {
            investment = presaleBalance;
        }

        if (investment > 0) {
            msg.sender.transfer(investment);
        }
    }

    function cancelAndTransferTokensToPresaleCreator() external {
        if (
            !cakeLiquidityAdded &&
            presaleCreatorAddress != msg.sender &&
            bscsDevAddress != msg.sender
        ) {
            revert();
        }
        if (cakeLiquidityAdded && bscsDevAddress != msg.sender) {
            revert();
        }

        require(!presaleCancelled);
        presaleCancelled = true;

        uint256 balance = token.balanceOf(address(this));
        if (balance > 0) {
            token.transfer(presaleCreatorAddress, balance);
        }
    }

    function collectFundsRaised() external onlyPresaleCreator {
        require(cakeLiquidityAdded);
        require(!presaleCancelled);
        require(block.timestamp >= presaleCreatorClaimTime);

        if (address(this).balance > 0) {
            presaleCreatorAddress.transfer(address(this).balance);
        }
    }

    function burnUnsoldTokens() external onlyPresaleCreatorOrBscsDev {
        require(cakeLiquidityAdded);
        require(!presaleCancelled);
        require(block.timestamp >= presaleCreatorClaimTime + 1 days); // wait 2 days before allowing burn

        uint256 unsoldTokensAmount = token.balanceOf(address(this));
        if (unsoldTokensAmount > 0) {
            token.transfer(unsoldTokensDumpAddress, unsoldTokensAmount);
        }
    }
}
