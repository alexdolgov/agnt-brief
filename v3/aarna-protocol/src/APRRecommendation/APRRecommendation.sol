// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.0;

import {Ownable} from "./Ownable.sol";
import {Address} from "./Address.sol";
import {SafeMath} from "./SafeMath.sol";
import {ILendingPool} from "./ILendingPool.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IPoolAddressesProvider} from "./ILendingPoolAddressesProvider.sol";

interface IAFiStorage {
  function calculateBalanceOfUnderlying(
    address tok,
    address afiContract
  ) external view returns (uint);
}

interface Compound {
  function interestRateModel() external view returns (address);

  function reserveFactorMantissa() external view returns (uint256);

  function totalBorrows() external view returns (uint256);

  function totalReserves() external view returns (uint256);

  function supplyRatePerBlock() external view returns (uint);

  function getCash() external view returns (uint256);
}

interface DyDx {
  struct val {
    uint256 value;
  }

  struct set {
    uint128 borrow;
    uint128 supply;
  }

  function getEarningsRate() external view returns (val memory);

  function getMarketInterestRate(uint256 marketId) external view returns (val memory);

  function getMarketTotalPar(uint256 marketId) external view returns (set memory);
}

interface InterestRateModel {
  function getSupplyRate(
    uint cash,
    uint borrows,
    uint reserves,
    uint reserveFactorMantissa
  ) external view returns (uint);
}

contract APRRecommendation is Ownable, ReentrancyGuard {
  using SafeMath for uint256;
  using Address for address;

  address public immutable poolAddressProvider;
  uint256 public constant DECIMAL = 10 ** 18;

  address public immutable DYDX;
  uint256 public immutable dydxModifier;
  
  mapping(address => address) public compound;
  mapping(address => address) public aave;
  mapping(address => uint256) public dydx;

  event AddCToken(address indexed token,address cToken);
  event AddAToken(address indexed token, address aToken);
  event RemoveCToken(address indexed token);
  event RemoveAToken(address indexed token);
  event RemoveDToken(address indexed token);
  event AddDToken(address token, uint dToken);

  constructor() {
    DYDX = address(0x1E0447b19BB6EcFdAe1e4AE1694b0C3659614e4e);
    dydxModifier = 20;
    poolAddressProvider = address(0x2f39d218133AFaB8F2B819B1066c7E434Ad94E9e);
    addCToken(
      0x0D8775F648430679A709E98d2b0Cb6250d2887EF,
      0x6C8c6b02E7b2BE14d4fA6022Dfd6d75921D90E4E
    ); // cBAT
    addCToken(
      0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE,
      0x4Ddc2D193948926D02f9B1fE9e1daa0718270ED5
    ); // cETH
    addCToken(
      0x1985365e9f78359a9B6AD760e32412f4a445E862,
      0x158079Ee67Fce2f58472A96584A73C7Ab9AC95c1
    ); // cREP
    addCToken(
      0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48,
      0x39AA39c021dfbaE8faC545936693aC917d5E7563
    ); // cUSDC
    addCToken(
      0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599,
      0xC11b1268C1A384e55C48c2391d8d480264A3A7F4
    ); // cWBTC
    addCToken(
      0xE41d2489571d322189246DaFA5ebDe1F4699F498,
      0xB3319f5D18Bc0D84dD1b4825Dcde5d5f7266d407
    ); // cZRX
    addCToken(
      0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984,
      0x35A18000230DA775CAc24873d00Ff85BccdeD550
    ); // cUNI
    addCToken(
      0x0bc529c00C6401aEF6D220BE8C6Ea1667F6Ad93e,
      0x80a2AE356fc9ef4305676f7a3E2Ed04e12C33946
    ); // cYFI
    addCToken(
      0xc00e94Cb662C3520282E6f5717214004A7f26888,
      0x70e36f6BF80a52b3B46b3aF8e106CC0ed743E8e4
    ); // cCOMP
    addAToken(
      0x0000000000085d4780B73119b644AE5ecd22b376,
      0x0000000000085d4780B73119b644AE5ecd22b376
    ); // aTUSD
    addAToken(
      0xdAC17F958D2ee523a2206206994597C13D831ec7,
      0xdAC17F958D2ee523a2206206994597C13D831ec7
    ); // aUSDT
    addAToken(
      0x57Ab1ec28D129707052df4dF418D58a2D46d5f51,
      0x57Ab1ec28D129707052df4dF418D58a2D46d5f51
    ); // aSUSD
    addAToken(
      0x80fB784B7eD66730e8b1DBd9820aFD29931aab03,
      0x80fB784B7eD66730e8b1DBd9820aFD29931aab03
    ); // aLEND
    addAToken(
      0x0D8775F648430679A709E98d2b0Cb6250d2887EF,
      0x0D8775F648430679A709E98d2b0Cb6250d2887EF
    ); // aBAT
    addAToken(
      0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE,
      0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
    ); // aETH
    addAToken(
      0x514910771AF9Ca656af840dff83E8264EcF986CA,
      0x514910771AF9Ca656af840dff83E8264EcF986CA
    ); // aLINK
    addAToken(
      0xdd974D5C2e2928deA5F71b9825b8b646686BD200,
      0xdd974D5C2e2928deA5F71b9825b8b646686BD200
    ); // aKNC
    addAToken(
      0x1985365e9f78359a9B6AD760e32412f4a445E862,
      0x1985365e9f78359a9B6AD760e32412f4a445E862
    ); // aREP
    addAToken(
      0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2,
      0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2
    ); // aMKR
    addAToken(
      0x0F5D2fB29fb7d3CFeE444a200298f468908cC942,
      0x0F5D2fB29fb7d3CFeE444a200298f468908cC942
    ); // aMANA
    addAToken(
      0xE41d2489571d322189246DaFA5ebDe1F4699F498,
      0xE41d2489571d322189246DaFA5ebDe1F4699F498
    ); // aZRX
    addAToken(
      0xC011a73ee8576Fb46F5E1c5751cA3B9Fe0af2a6F,
      0xC011a73ee8576Fb46F5E1c5751cA3B9Fe0af2a6F
    ); // aSNX
    addAToken(
      0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599,
      0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599
    ); // aWBTC
    addAToken(
      0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984,
      0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984
    ); // aUNI
    addAToken(
      0x0bc529c00C6401aEF6D220BE8C6Ea1667F6Ad93e,
      0x0bc529c00C6401aEF6D220BE8C6Ea1667F6Ad93e
    ); // aYFI
    addAToken(
      0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2,
      0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2
    ); // aWETH
    addAToken(
      0xba100000625a3754423978a60c9317c58a424e3D,
      0xba100000625a3754423978a60c9317c58a424e3D
    );

    addDToken(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2, 0); // dWETH
    addDToken(0x6B175474E89094C44Da98b954EedeAC495271d0F, 3); // dDAI
  }

  /**
   * @notice To recommend tokens to stake into pools.
   * @dev Calculate the apr and return .
   * @param _token Address of underlying .
   * @param afiContract Address of AFi contract (AToken).
   */
  function recommend(
    address _token,
    address afiContract,
    address afiStorage
  )
    public
    view
    returns (string memory choice, uint256 capr, uint256 aapr, uint256 dapr)
  {
    (capr, aapr, dapr, , ) = getAPROptionsInc(_token, afiContract, afiStorage);
    return (choice, capr, aapr, dapr);
  }

  /**
   * @notice To return the apr for the pools.
   * @dev Calculate balance of underlying and using that calculate the apr .
   * @param _token Address of underlying .
   * @param _afiContract Address of AFi contract (AToken).
   */
  function getAPROptionsInc(
    address _token,
    address _afiContract,
    address afiStorage
  )
    public
    view
    returns (
      uint256 _compound,
      uint256 _aave,
      uint256 _dydx,
      uint256 _ddex,
      uint256 _lendf
    )
  {
    address AFIToken = _afiContract; //AFIToken address (Different for all)
    uint256 _supply = 0;
    if (AFIToken != address(0)) {
      _supply = IAFiStorage(afiStorage).calculateBalanceOfUnderlying(
        _token,
        _afiContract
      );
    }
    return getAPROptionsAdjusted(_token, _supply);
  }

  /**
   * @notice To return the apr of the pools for staking.
   * @param _token Address of underlying .
   */
  function getAPROptions(
    address _token
  )
    public
    view
    returns (
      uint256 _compound,
      uint256 _aave,
      uint256 _dydx,
      uint256 _ddex,
      uint256 _lendf
    )
  {
    return getAPROptionsAdjusted(_token, 0);
  }

  /**
   * @notice To return the apr of the pools for staking.
   * @param _token Address of underlying .
   * @param _supply Amount of underlying balance in tokens.
   */
  function getAPROptionsAdjusted(
    address _token,
    uint256 _supply
  )
    public
    view
    returns (
      uint256 _compound,
      uint256 _aave,
      uint256 _dydx,
      uint256 _ddex,
      uint256 _lendf
    )
  {
    address addr = compound[_token];
    if (addr != address(0)) {
      _compound = getCompoundAPR(addr);
    }

    addr = aave[_token];
    if (addr != address(0)) {
      _aave = getAaveAPRAdjusted(addr);
    }

    _dydx = dydx[_token];
    if (_dydx >= 1 && _dydx < 4 || _token == address(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2)) {
      _dydx = getDyDxAPRAdjusted(_dydx, _supply);
    }

    return (_compound, _aave, _dydx, _ddex, _lendf);
  }

  /**
   * @notice To calculatre the apr for the compound pool.
   * @dev Calculate the apr and return .
   * @param token Address of underlying .
   */
  function getCompoundAPR(address token) public view returns (uint256) {
    return Compound(token).supplyRatePerBlock().mul(2102400);
  }

  /**
   * @notice To calculatre the apr for the comp pool.
   * @dev Calculate the apr and return .
   * @param token Address of underlying .
   */
  function getCompoundAPRAdjusted(
    address token,
    uint256 _supply
  ) public view returns (uint256) {
    Compound c = Compound(token);
    address model = Compound(token).interestRateModel();
    if (model == address(0)) {
      return c.supplyRatePerBlock().mul(2102400);
    }
    InterestRateModel i = InterestRateModel(model);
    uint256 cashPrior = c.getCash().add(_supply);
    return
      i
        .getSupplyRate(
          cashPrior,
          c.totalBorrows(),
          c.totalReserves().add(_supply),
          c.reserveFactorMantissa()
        )
        .mul(2102400);
  }

  /**
   * @notice To calculatre the apr for the dydx pool.
   * @dev Calculate the apr and return .
   * @param marketId Number assign for the particular underlying .
   */
  function getDyDxAPR(uint256 marketId) public view returns (uint256) {
    uint256 rate = DyDx(DYDX).getMarketInterestRate(marketId).value;
    uint256 aprBorrow = rate * 31622400;
    uint256 borrow = DyDx(DYDX).getMarketTotalPar(marketId).borrow;
    uint256 supply = DyDx(DYDX).getMarketTotalPar(marketId).supply;
    uint256 usage = (borrow * DECIMAL) / supply;
    uint256 apr = (((aprBorrow * usage) / DECIMAL) *
      DyDx(DYDX).getEarningsRate().value) / DECIMAL;
    return apr;
  }

  function getDyDxAPRAdjusted(
    uint256 marketId,
    uint256 _supply
  ) public view returns (uint256) {
    uint256 rate = DyDx(DYDX).getMarketInterestRate(marketId).value;
    // Arbitrary value to offset calculations
    _supply = _supply.mul(dydxModifier);
    uint256 aprBorrow = rate * 31622400;
    uint256 borrow = DyDx(DYDX).getMarketTotalPar(marketId).borrow;
    uint256 supply = DyDx(DYDX).getMarketTotalPar(marketId).supply;
    supply = supply.add(_supply);
    uint256 usage = (borrow * DECIMAL) / supply;
    uint256 apr = (((aprBorrow * usage) / DECIMAL) *
      DyDx(DYDX).getEarningsRate().value) / DECIMAL;
    return apr;
  }

  /**
   * @notice To calculatre the apr for the aave pool.
   * @dev Calculate the apr and return .
   * @param token Address of the underlying token.
   */
  function getAaveAPRAdjusted(address token) public view returns (uint256) {
    uint256 currentLiquidityRate = 0;
    currentLiquidityRate = _lendingPool().getReserveData(token).currentLiquidityRate;
    return currentLiquidityRate.div(1e9);
  }

  /// @notice Retrieves Aave LendingPool address
  /// @return A reference to LendingPool interface
  function _lendingPool() public view returns (ILendingPool) {
    return ILendingPool(IPoolAddressesProvider(poolAddressProvider).getPool());
  }

  /**
   * @notice To add the new  Ctoken.
   * @dev only owner can add the CToken .
   * @param token Address of the  underlying token.
   * @param cToken Address of the  CToken.
   */
  function addCToken(address token, address cToken) public onlyOwner {
    compound[token] = cToken;
    emit AddCToken(token, cToken);
  }

  /**
  * @notice To remove compound token .
  * @dev only owner can remove the compound token .
  * @param token Address of the CToken.
  */
  function removeCToken(
    address token
  ) external onlyOwner {
    compound[token] = address(0);
    emit RemoveCToken(token);
  }

  /**
  * @notice To remove dydx token .
  * @dev only owner can remove the dydx token .
  * @param token Address of the DToken.
  */
  function removeDToken(
    address token
  ) external onlyOwner {
      dydx[token] = 4;
      emit RemoveDToken(token);
  }

  /**
  * @notice To remove Aave token .
  * @dev only owner can remove the Aave token .
  * @param token Address of the AaveToken.
  */
  function removeAToken(
    address token
  ) external onlyOwner {
      aave[token]= address(0);
      emit RemoveAToken(token);
  }

  /**
  * @notice To add the AToken.
  * @dev only owner can add the AToken.
  * @param token Address of the underlying token.
  * @param aToken Address of the AToken.
  */
  function addAToken(
    address token,
    address aToken
  ) public onlyOwner {
    aave[token] = aToken;
    emit AddAToken(token, aToken);
  }

  /**
   * @notice To remove Dydx Token.
   * @dev only owner can remove the DYDX.
   * @param token Address of the underlying token.
   * @param dToken Address of the AToken.
   */
  function addDToken(address token, uint256 dToken) public onlyOwner {
    dydx[token] = dToken;
    emit AddDToken(token, dToken);
  }
}