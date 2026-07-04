// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./interfaces/IERC20.sol";
import "./BSCstarterPresale.sol";
import "./BSCstarterInfo.sol";
import "./BSCstarterLiquidityLock.sol";
import "./lib/ReentrancyGuard.sol";
import "./STARToken.sol";
import "./BSCstarterStaking.sol";

interface IPancakeSwapV2Factory {
    function getPair(address tokenA, address tokenB)
        external
        view
        returns (address pair);
}

contract BSCstarterFactory is ReentrancyGuard {
    using SafeMath for uint256;

    event PresaleCreated(bytes32 title, uint256 bscsId, address creator);
    event Received(address indexed from, uint256 amount);

    BSCstarterInfo public immutable BSCS;
    STARToken public bscsToken;

    BSCstarterStaking public bscsStakingPool;

    mapping(address => uint256) public lastClaimedTimestamp;

    constructor(
        address _bscsInfoAddress,
        address _bscsToken,
        address _bscsStakingPool
    ) public {
        BSCS = BSCstarterInfo(_bscsInfoAddress);
        bscsToken = STARToken(_bscsToken);
        bscsStakingPool = BSCstarterStaking(_bscsStakingPool);
    }

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    struct PresaleInfo {
        address tokenAddress;
        address unsoldTokensDumpAddress;
        address[] whitelistedAddresses;
        uint256 tokenPriceInWei;
        uint256 hardCapInWei;
        uint256 softCapInWei;
        uint256 maxInvestInWei;
        uint256 minInvestInWei;
        uint256 openTime;
        uint256 closeTime;
    }

    struct PresalePancakeSwapInfo {
        uint256 listingPriceInWei;
        uint256 liquidityAddingTime;
        uint256 lpTokensLockDurationInDays;
        uint256 liquidityPercentageAllocation;
    }

    struct PresaleStringInfo {
        bytes32 saleTitle;
        bytes32 linkTelegram;
        bytes32 linkGithub;
        bytes32 linkTwitter;
        bytes32 linkWebsite;
        bytes32 linkLogo;
    }

    // copied from https://github.com/Uniswap/uniswap-v2-periphery/blob/master/contracts/libraries/UniswapV2Library.sol
    // calculates the CREATE2 address for a pair without making any external calls
    function cakeV2LibPairFor(
        address factory,
        address tokenA,
        address tokenB
    ) internal pure returns (address pair) {
        (address token0, address token1) =
            tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        pair = address(
            uint256(
                keccak256(
                    abi.encodePacked(
                        hex"ff",
                        factory,
                        keccak256(abi.encodePacked(token0, token1)),
                        hex"96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f" // init code hash
                    )
                )
            )
        );
    }

    function initializePresale(
        BSCstarterPresale _presale,
        uint256 _totalTokens,
        uint256 _finalTokenPriceInWei,
        PresaleInfo calldata _info,
        PresalePancakeSwapInfo calldata _cakeInfo,
        PresaleStringInfo calldata _stringInfo
    ) internal {
        _presale.setAddressInfo(
            msg.sender,
            _info.tokenAddress,
            address(bscsToken),
            _info.unsoldTokensDumpAddress
        );
        _presale.setGeneralInfo(
            _totalTokens,
            _finalTokenPriceInWei,
            _info.hardCapInWei,
            _info.softCapInWei,
            _info.maxInvestInWei,
            _info.minInvestInWei,
            _info.openTime,
            _info.closeTime,
            BSCS.getMinInvestorBSCSBalance()
        );
        _presale.setPancakeSwapInfo(
            _cakeInfo.listingPriceInWei,
            _cakeInfo.liquidityAddingTime,
            _cakeInfo.lpTokensLockDurationInDays,
            _cakeInfo.liquidityPercentageAllocation
        );
        _presale.setStringInfo(
            _stringInfo.saleTitle,
            _stringInfo.linkTelegram,
            _stringInfo.linkGithub,
            _stringInfo.linkTwitter,
            _stringInfo.linkWebsite,
            _stringInfo.linkLogo
        );

        _presale.addWhitelistedAddresses(_info.whitelistedAddresses);
    }

    function createPresale(
        PresaleInfo calldata _info,
        PresalePancakeSwapInfo calldata _cakeInfo,
        PresaleStringInfo calldata _stringInfo
    ) external {
        IERC20 token = IERC20(_info.tokenAddress);

        BSCstarterPresale presale =
            new BSCstarterPresale(
                address(this),
                address(BSCS),
                BSCS.owner(),
                BSCS.getMinRewardQualifyBal(),
                BSCS.getMinRewardQualifyPercentage()
            );
        IPancakeSwapV2Factory pancakeSwapFactory =
            IPancakeSwapV2Factory(BSCS.getPancakeSwapFactory());

        uint256 maxBnbPoolTokenAmount =
            _info.hardCapInWei.mul(_cakeInfo.liquidityPercentageAllocation).div(
                100
            );
        uint256 maxLiqPoolTokenAmount =
            maxBnbPoolTokenAmount.mul(1e18).div(_cakeInfo.listingPriceInWei);

        uint256 maxTokensToBeSold =
            _info.hardCapInWei.mul(1e18).div(_info.tokenPriceInWei);
        uint256 requiredTokenAmount =
            maxLiqPoolTokenAmount.add(maxTokensToBeSold);
        token.transferFrom(msg.sender, address(presale), requiredTokenAmount);

        uint256 presaleGrantId;
        if (
            bscsToken.balanceOf(address(this)) >= BSCS.getPresaleGrantAmount()
        ) {
            // locked incubator bonus BSCS tokens if presale succeeds
            BSCstarterLiquidityLock incubatorLock =
                new BSCstarterLiquidityLock(
                    bscsToken,
                    _cakeInfo.liquidityAddingTime + 30 days,
                    BSCS.getIncubatorMsigAddress(),
                    msg.sender
                );
            bscsToken.transfer(
                address(incubatorLock),
                BSCS.getPresaleGrantAmount()
            );
            presaleGrantId = BSCS.addPresaleGrantAddress(
                address(incubatorLock)
            );
        }

        initializePresale(
            presale,
            maxTokensToBeSold,
            _info.tokenPriceInWei,
            _info,
            _cakeInfo,
            _stringInfo
        );

        address pairAddress =
            cakeV2LibPairFor(
                address(pancakeSwapFactory),
                address(token),
                BSCS.getWBNB()
            );
        BSCstarterLiquidityLock liquidityLock =
            new BSCstarterLiquidityLock(
                IERC20(pairAddress),
                _cakeInfo.liquidityAddingTime +
                    (_cakeInfo.lpTokensLockDurationInDays * 1 days),
                msg.sender,
                address(0)
            );

        uint256 bscsId = BSCS.addPresaleAddress(address(presale));
        presale.setBscsInfo(
            address(liquidityLock),
            BSCS.getDevFeePercentage(),
            BSCS.getMinDevFeeInWei(),
            bscsId,
            presaleGrantId,
            address(bscsStakingPool)
        );

        emit PresaleCreated(_stringInfo.saleTitle, bscsId, msg.sender);
    }

    function claimHodlerFund() external nonReentrant {
        require(address(this).balance > 0, "No rewards to claim");
        require(
            lastClaimedTimestamp[msg.sender] + BSCS.getMinClaimTime() <=
                block.timestamp,
            "Invalid Claim Time"
        );

        uint256 balance;
        uint256 lastStakedTimestamp;
        uint256 lastUnstakedTimestamp;
        (balance, lastStakedTimestamp, lastUnstakedTimestamp) = bscsStakingPool
            .accountInfos(msg.sender);
        uint256 minStakeTime = BSCS.getMinStakeTime();
        uint256 totalHodlerBalance = BSCS.getLockedBalance(msg.sender);

        if (lastStakedTimestamp + minStakeTime <= block.timestamp) {
            totalHodlerBalance = totalHodlerBalance.add(balance);
        }

        require(
            totalHodlerBalance >= BSCS.getMinRewardQualifyBal() &&
                totalHodlerBalance <= BSCS.getMaxRewardQualifyBal(),
            "Do not qualify for rewards"
        );
        lastClaimedTimestamp[msg.sender] = block.timestamp;
        msg.sender.transfer(
            totalHodlerBalance.div(bscsToken.totalSupply()).mul(
                address(this).balance
            )
        );
    }
}
