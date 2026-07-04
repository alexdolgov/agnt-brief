// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface ILandshareAPIConsumer {
    function getRWAPrice() external view returns (uint256);
}

interface IRWAToken {
    function isWhitelistedAddress(address) external view returns (bool);
}

interface IPancakePair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

interface IPriceOracle {
    function defaultDecimals() external view returns (uint256);

    function coinExistsInOracle(
        address coin
    ) external view returns (bool isCoinExists);

    function getAllPossibleFiat() external view returns (uint256[] memory);

    function getCoinPrice(
        uint256 fiatForPrice,
        address targetCoin,
        address relatedCoin
    ) external view returns (bool priceProvided, uint256 price);
}
contract LandshareSale is Ownable {
    using SafeERC20 for IERC20;
    IPancakePair public PAIR_WBNB_BUSD;
    IPancakePair public PAIR_WBNB_LAND;
    IERC20 public RWAToken;
    IERC20 public USDC;
    IERC20 public LAND;
    mapping(address => bool) whiteList;
    mapping(address => bool) blackList;
    uint256 saleLimit;
    struct SaleInfo {
        uint256 totalTxAmount;
        uint txStart;
    }
    mapping(address => SaleInfo) public saleInfo;
    ILandshareAPIConsumer public landshareAPIConsumer;
    IPriceOracle public saleExchangeRate;
    address treasuryWallet;
    uint256 public landFee;

    event RWASold(address indexed user, uint256 amount, uint256 usdcAmount, uint256 userLandFee);

    constructor(address _RWATokenAddress, address _USDCTokenAddress, address _LANDTokenAddress, address _apiConsumer, address _saleExchangeRate) Ownable(address(0xB2E7C3eF8d3a76012AE89f2be0a93D7809dd9f10)) {
        landFee = 1;
        saleLimit = 500000000000000000000;
        landshareAPIConsumer = ILandshareAPIConsumer(
            _apiConsumer
        );
        RWAToken = IERC20(_RWATokenAddress);
        USDC = IERC20(_USDCTokenAddress);
        LAND = IERC20(_LANDTokenAddress);
        saleExchangeRate = IPriceOracle(_saleExchangeRate);

    }

    function getSaleLimit(address user) public view returns (uint256, uint256, bool) {
        if (block.timestamp - saleInfo[user].txStart > 30 days)
            return (saleLimit, saleInfo[user].txStart + 30 days, true);
        else
            return (saleLimit - saleInfo[user].totalTxAmount, saleInfo[user].txStart + 30 days, false);
    }

        function getIsWhitelistedAddress(address user) public view returns (bool) {
        return IRWAToken(address(RWAToken)).isWhitelistedAddress(user);
    }

  

    function getLANDFee(uint256 amountUSDC) public view returns (uint256) {
        uint256 fee = amountUSDC * landFee / 100;
        (,uint256 landPrice ) = saleExchangeRate.getCoinPrice(840, 0xA73164DB271931CF952cBaEfF9E8F5817b42fA5C, address(0));
        return(fee * 1e18 / landPrice );
    }

    function sellRWA(uint256 amount) public {
        require(landshareAPIConsumer.getRWAPrice() > 0, "RWA price shouldn't be 0");
        uint256 usdcAmount = amount * landshareAPIConsumer.getRWAPrice();
        uint userLandFee = getLANDFee(usdcAmount);
        require(amount > 0, "The amount should be greater than zero.");
        require(
            amount <= RWAToken.balanceOf(msg.sender),
            "Insufficient Balance."
        );
        require(landFee <= LAND.balanceOf(msg.sender), "insufficient LAND for fee");
        require(
            getIsWhitelistedAddress(msg.sender) == true, 
            "You should be listed in white list to interact."
        );
        require(
            blackList[msg.sender] == false,
            "You are listed in black list."
        );
        if (saleInfo[msg.sender].txStart + 30 days < block.timestamp) {
            saleInfo[msg.sender].txStart = 0;
            saleInfo[msg.sender].totalTxAmount = 0;
        }
        require(
            saleInfo[msg.sender].totalTxAmount + usdcAmount < saleLimit,
            "The transaction amount reaches out to 30 days limit."
        );

        if (saleInfo[msg.sender].txStart == 0) {
            saleInfo[msg.sender].txStart = block.timestamp;
        }
        RWAToken.safeTransferFrom(msg.sender, treasuryWallet, amount);
        USDC.safeTransferFrom(treasuryWallet, msg.sender, usdcAmount);
        LAND.safeTransferFrom(msg.sender, treasuryWallet, userLandFee);
        saleInfo[msg.sender].totalTxAmount += usdcAmount;
        emit RWASold(msg.sender, amount, usdcAmount, userLandFee);
    }

    function addToBlackList(address user) public onlyOwner {
        blackList[user] = true;
    }

        function setSaleLimit(uint256 limit) public onlyOwner {
        saleLimit = limit;
    }

    function setTreasuryWallet(address wallet) public onlyOwner {
        treasuryWallet = wallet;
    }

    function setFee(uint256 _fee) public onlyOwner {
        require(_fee >= 1, "Value should be more than 1%");
        landFee = _fee;
    }
}