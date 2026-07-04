// SPDX-License-Identifier: MIT
pragma experimental ABIEncoderV2;
pragma solidity 0.7.4;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "./libs/SafeMathInt.sol";
import "./structs.sol";

contract ProtocolFees is Ownable {
    using SafeMath for uint256;
    using SafeMathInt for int256;

    struct FeeInfo {
        uint256 liquidityFee;
        uint256 burnFee;
        uint256 buyFeeTreasury;
        uint256 buyFeeInsuranceFund;
        uint256 buyFeeStakers;
        uint256 buyFeeNFT;
        uint256 buyFeeStaking;
        uint256 sellFeeTreasury;
        uint256 sellFeeInsuranceFund;
        uint256 sellFeeStakers;
        uint256 sellFeeNFT;
        uint256 sellFeeStaking;
        uint256 totalBuyFee;
        uint256 totalSellFee;
        uint256 feeDenominator;
    }

    struct FeeReceivers {
        address treasuryFeeReceiver;
        address liquidityTokensReceiver;
        address insuranceFeeReceiver;
        address nftFeeReceiver;
        address stakingFeeReceiver;
    }

    /* ================ FEE RECEIVERS ================== */

    // `Treasure Trove` treasury address
    address public treasuryFeeReceiver;

    // Receiver of LP tokens generated for protocol
    address public liquidityTokensReceiver;

    // `Coral Preservation` Insurance Fund
    address public insuranceFeeReceiver;

    // Address NFT holder incentive fees are sent to
    address public nftFeeReceiver;

    // Address where `AALTO Reflections`fees for stakers are sent
    address public stakingFeeReceiver;

    /* ================= FEES =================== */

    // Max total fee % for any one buy/sell fee
    uint256 public constant MAX_FEE_RATE = 25;

    // Mapping of addresses that that will not be charges transfer fees
    mapping(address => bool) internal isFeeExempt;

    bool public feesOnNormalTransfers = true;

    /* ================ NFT ITEMS ================== */

    // Tier based protocol NFTs mapping
    mapping(address => ProtocolNft) public protocolNfts;

    // Index based
    ProtocolNft[] public nfts;

    uint256 public nftFeeDiscount = 2;

    uint256 public nftFeeDiscountDenominator = 100;

    bool public nftFeeDiscountEnabled = false;

    /* =========== SHARED(BUY/SELL) FEES ============ */

    // Rising Tide (Auto Liquidity) fee
    uint256 public liquidityFee = 3;

    // `Mariana Trench`
    uint256 public burnFee = 2;

    /* ================ BUY FEES ================== */

    // Percentage of buy fee that goes to treasury
    uint256 public buyFeeTreasury = 3;

    // `Coral Preservation` Insurance Fund fee
    uint256 public buyFeeInsuranceFund = 4;

    // `AALTO Reflections`. Staking rewards
    uint256 public buyFeeStaking = 1;

    uint256 public buyFeeNFT = 0;

    uint256 public totalBuyFee =
        liquidityFee
            .add(burnFee)
            .add(buyFeeTreasury)
            .add(buyFeeInsuranceFund)
            .add(buyFeeStaking)
            .add(buyFeeNFT);

    /* ================ SELL FEES ================== */

    // `Treasure Trove` treasury fee
    uint256 public sellFeeTreasury = 8;

    // `Coral Preservation` Insurance Fund fee
    uint256 public sellFeeInsuranceFund = 8;

    // `AALTO Reflections`. Staking rewards
    uint256 public sellFeeStaking = 4;

    uint256 public sellFeeNFT = 0;

    // Sell fee is total of totalBuyFee + sell fees
    uint256 public totalSellFee =
        liquidityFee
            .add(burnFee)
            .add(sellFeeTreasury)
            .add(sellFeeInsuranceFund)
            .add(sellFeeStaking)
            .add(sellFeeNFT);

    uint256 public feeDenominator = 100;

    /* ================ BLACKLIST/BONUS LIST ================== */

    // Cause some people choose to be sucky
    mapping(address => bool) internal blacklist;

    // Addresses of early community members who helped along the way
    mapping(address => bool) internal samaritans;

    constructor(
        address _treasuryFeeReceiver,
        address _insuranceFeeReceiver,
        address _nftFeeReceiver,
        address _stakingFeeReceiver,
        address _liquityTokensReceiver
    ) {
        require(
            _treasuryFeeReceiver != address(0),
            "AALTO: 0x0 treasuryFeeReceiver"
        );
        require(
            _insuranceFeeReceiver != address(0),
            "AALTO: 0x0 _insuranceFeeReceiver"
        );
        require(
            _stakingFeeReceiver != address(0),
            "AALTO: 0x0 _stakingFeeReceiver"
        );
        // require(
        //     _liquityTokensReceiver != address(0),
        //     "AALTO: 0x0 _liquityTokensReceiver"
        // );
        // _liquityTokensReceiver can be burned
        // nftFeeReceiver can be address(0) from start

        treasuryFeeReceiver = _treasuryFeeReceiver;
        insuranceFeeReceiver = _insuranceFeeReceiver;
        nftFeeReceiver = _nftFeeReceiver;
        stakingFeeReceiver = _stakingFeeReceiver;
        liquidityTokensReceiver = _liquityTokensReceiver;

        // Set initial/default fee exemptions
        isFeeExempt[treasuryFeeReceiver] = true;
        isFeeExempt[insuranceFeeReceiver] = true;
        isFeeExempt[stakingFeeReceiver] = true;
        isFeeExempt[address(this)] = true;
        isFeeExempt[msg.sender] = true;
    }

    function checkFeeExempt(address _addr) external view returns (bool) {
        return isFeeExempt[_addr];
    }

    /* ======================== UI/API HELPERS ========================= */

    function getFees() public view returns (FeeInfo memory info) {
        info.liquidityFee = liquidityFee;
        info.burnFee = burnFee;
        info.buyFeeTreasury = buyFeeTreasury;
        info.buyFeeInsuranceFund = buyFeeInsuranceFund;
        info.buyFeeStakers = buyFeeStaking;
        info.buyFeeNFT = buyFeeNFT;
        info.buyFeeStaking = buyFeeStaking;
        info.sellFeeTreasury = sellFeeTreasury;
        info.sellFeeInsuranceFund = sellFeeInsuranceFund;
        info.sellFeeStakers = sellFeeStaking;
        info.sellFeeNFT = sellFeeNFT;
        info.sellFeeStaking = sellFeeStaking;
        info.totalBuyFee = totalBuyFee;
        info.totalSellFee = totalSellFee;
        info.feeDenominator = feeDenominator;
    }

    function getFeeReceivers() public view returns (FeeReceivers memory) {
        return
            FeeReceivers(
                treasuryFeeReceiver,
                liquidityTokensReceiver,
                insuranceFeeReceiver,
                nftFeeReceiver,
                stakingFeeReceiver
            );
    }

    /* ======================= ADMIN FUNCTIONS ======================= */

    function updateBlacklist(address _who, bool _value) external onlyOwner {
        require(_who != address(0), "AALTO: 0x0 who");
        require(blacklist[_who] != _value, "AALTO: Value not changed");

        blacklist[_who] = _value;
    }

    function updateSamaritanlist(address _who, bool _value) external onlyOwner {
        require(_who != address(0), "AALTO: 0x0 who");
        require(samaritans[_who] != _value, "AALTO: Value not changed");

        samaritans[_who] = _value;
    }

    function setFeeExempt(address _addr, bool _value) external onlyOwner {
        require(isFeeExempt[_addr] != _value, "AALTO: Value not changed");

        isFeeExempt[_addr] = _value;
    }

    function setFeesOnNormalTransfers(bool _enabled) external onlyOwner {
        require(feesOnNormalTransfers != _enabled, "AALTO: Value not changed");

        feesOnNormalTransfers = _enabled;
        emit UpdatFeeOnNormalTransferse(_enabled);
    }

    function setFeeReceivers(
        address _treasuryReceiver,
        address _insuranceFundReceiver,
        address _nftFeeReceiver,
        address _stakingFeeReceiver
    ) external onlyOwner {
        require(
            _treasuryReceiver != address(0),
            "AALTO: 0x0 _treasuryReceiver"
        );
        require(
            _insuranceFundReceiver != address(0),
            "AALTO: 0x0 _insuranceFundReceiver"
        );
        require(
            _stakingFeeReceiver != address(0),
            "AALTO: 0x0 stakingFeeReceiver"
        );
        // _nftFeeReceiver can be 0x0

        treasuryFeeReceiver = _treasuryReceiver;
        insuranceFeeReceiver = _insuranceFundReceiver;
        nftFeeReceiver = _nftFeeReceiver;
        stakingFeeReceiver = _stakingFeeReceiver;

        emit UpdatFeeReceivers(
            _treasuryReceiver,
            _insuranceFundReceiver,
            _nftFeeReceiver,
            _stakingFeeReceiver
        );
    }

    function setFees(
        uint256 _liquidityFee,
        uint256 _burnFee,
        uint256 _buyFeeInsuranceFund,
        uint256 _buyFeeTreasury,
        uint256 _buyFeeStaking,
        uint256 _buyFeeNFT,
        uint256 _sellFeeTreasury,
        uint256 _sellFeeInsuranceFund,
        uint256 _sellFeeStakers,
        uint256 _sellFeeNFT,
        uint256 _sellFeeStaking,
        uint256 _feeDenominator
    ) external onlyOwner {
        require(
            _liquidityFee <= MAX_FEE_RATE &&
                _burnFee <= MAX_FEE_RATE &&
                _buyFeeInsuranceFund <= MAX_FEE_RATE &&
                _buyFeeTreasury <= MAX_FEE_RATE &&
                _buyFeeStaking <= MAX_FEE_RATE &&
                _buyFeeNFT <= MAX_FEE_RATE &&
                _sellFeeTreasury <= MAX_FEE_RATE &&
                _sellFeeInsuranceFund <= MAX_FEE_RATE &&
                _sellFeeStakers <= MAX_FEE_RATE &&
                _sellFeeNFT <= MAX_FEE_RATE,
            "AALTO: Max fee exceeded"
        );

        liquidityFee = _liquidityFee;

        buyFeeTreasury = _buyFeeTreasury;
        buyFeeInsuranceFund = _buyFeeInsuranceFund;
        buyFeeStaking = _buyFeeStaking;
        buyFeeNFT = _buyFeeNFT;
        buyFeeStaking = _buyFeeStaking;

        sellFeeTreasury = _sellFeeTreasury;
        sellFeeInsuranceFund = _sellFeeInsuranceFund;
        sellFeeNFT = _sellFeeNFT;
        sellFeeStaking = _sellFeeStaking;

        totalBuyFee = liquidityFee
            .add(burnFee)
            .add(buyFeeTreasury)
            .add(buyFeeInsuranceFund)
            .add(buyFeeStaking)
            .add(buyFeeNFT);

        totalSellFee = totalBuyFee
            .add(sellFeeTreasury)
            .add(sellFeeInsuranceFund)
            .add(sellFeeStaking)
            .add(sellFeeNFT);

        feeDenominator = _feeDenominator;

        require(
            totalBuyFee < feeDenominator / 4,
            "AALTO: New totalBuyFee is > feeDenominator / 4"
        );
    }

    /* ================ MODIFIERS ================== */

    modifier notBlacklisted(address _account) {
        require(blacklist[_account] == false, "AALTO: Blacklisted account");
        _;
    }

    /* ================ EVENTS ================== */

    event UpdatFeeOnNormalTransferse(bool indexed setTo);
    event UpdatFeeReceivers(
        address treasuryReceiver,
        address insuranceFundReceiver,
        address nftFeeReceiver,
        address stakingFeeReceiver
    );
    event UpdatNftDiscountEnabled(bool indexed setTo);
    event UpdatSamaritanDiscount(
        uint256 indexed _numerator,
        uint256 indexed _denominator
    );
    event UpdatSmaritanDiscountEnabled(bool indexed setTo);
    event UpdatNftDiscount(
        uint256 indexed _numerator,
        uint256 indexed _denominator
    );
}
