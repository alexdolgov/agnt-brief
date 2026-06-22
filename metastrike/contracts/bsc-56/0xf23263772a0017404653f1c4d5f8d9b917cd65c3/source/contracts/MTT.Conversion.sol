// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IRouter {
    function getAmountsOut(
        uint amountIn,
        address[] calldata path
    ) external view returns (uint[] memory amounts);
}

interface IConvestionVestingMTT {
    function allocateMTT(address, uint256, uint256) external;
}

interface IConvestionStakingMTT {
    function stake(address _wallet, uint256 _amount, uint256 _period) external;
}

contract ConversionMTT is Ownable, ReentrancyGuard {
    // BSC Testnet
    address public mtsToken = 0x8848965E42436Ed5afAed062628645b5242daf69;
    address public stablecoin = 0x54701381f822fA3a820F335b1461d5167E28e2dD;
    address public router = 0xD99D1c33F9fC3444f8101754aBC46c52416550D1;

    // // Sepolia
    // address public mtsToken = 0x8b7E4Cff69D54A3e96FB6A41ac1c098243c98A1d;
    // address public stablecoin = 0x826237db5E57E19C06189801FfF97A6fb4DF3aaD;
    // address public router = 0xC532a74256D3Db42D0Bf7a0400fEFDbad7694008;

    address public vesting;
    address public staking;
    uint256 public deploymentTime;
    uint256 public conversionRemaining = 100_000_000 * 10 ** 18;

    uint256 private _markedUpMtsValueUnit;

    constructor() Ownable(msg.sender) {
        deploymentTime = block.timestamp;
        // mtsToken = _mtsToken;

        _markedUpMtsValueUnit = 200 * 10 ** 14; // $0.02
    }

    /* Events */
    event ConvertMtsEvent(
        address user,
        uint256 mtsAmount,
        uint256 baseMttAmounty,
        uint256 bonusMttAmount
    );
    event SwapMtsAndStakeMttEvent(
        address user,
        uint256 mtsAmount,
        uint32 stakePeriodDays
    );

    /* Admin config */

    function setDEX(
        address _mtsToken,
        address _stablecoin,
        address _router
    ) external onlyOwner {
        mtsToken = _mtsToken;
        stablecoin = _stablecoin;
        router = _router;
    }

    function setVesting(address _vesting) external onlyOwner {
        require(isContract(_vesting), "Must be a contract");
        vesting = _vesting;
    }

    function setStaking(address _staking) external onlyOwner {
        require(isContract(_staking), "Must be a contract");
        staking = _staking;
    }

    /* Get MTS price from pancakeswap in decimals 18 */

    function getMtsPrice() public view returns (uint256) {
        address[] memory route = new address[](2);
        route[0] = mtsToken;
        route[1] = stablecoin;
        uint256[] memory amounts = IRouter(router).getAmountsOut(
            1 * 10 ** 18,
            route
        );
        return amounts[1];
    }

    /* Conversions */

    function convertInternal(
        uint256 _mtsAmount
    ) public view returns (uint256 baseMttAmount, uint256 bonusMttAmount) {
        // [18 decimals] Fetch market price of MTS in USD
        uint256 mtsValueUnit = getMtsPrice();

        // [18 decimals] Calculate user's provided RAIN token's USD worth
        // Dividing by 10**18 is eliminating rainAmount's decimal offset
        uint256 mtsValueUSD = (_mtsAmount * mtsValueUnit) / 10 ** 18;

        uint256 _markedUpMtsValueUnitCurrent = _markedUpMtsValueUnit;

        // It is the MTS value that is decaying not the bonus
        if (block.timestamp >= deploymentTime + 60 days) {
            _markedUpMtsValueUnitCurrent = 6 * 10 ** 15; // $0.006
        } else if (block.timestamp >= deploymentTime + 30 days) {
            _markedUpMtsValueUnitCurrent = 8 * 10 ** 15; // $0.008
        }

        // [18 decimals] Calculate rewarded MTS value in USD (including bonus)
        uint256 markedUpMtsValueUSD = (block.timestamp >=
            deploymentTime + 90 days)
            ? mtsValueUSD
            : (_mtsAmount * _markedUpMtsValueUnitCurrent) / 10 ** 18;

        // [6 decimals] Set parameters for MTT value at $0.0045
        uint256 mttValueUnit = 15 * 10 ** 15;
        uint256 mttValueBase = 1 * 10 ** 18;

        // [18 decimals] Calculate MTT amount to reward in total (base + bonus)
        baseMttAmount = (markedUpMtsValueUSD * mttValueBase) / mttValueUnit;

        // By default, we assume that there is no bonus, i.e. mtsValueUSD > markedUpMtsValueUSD
        // In this case, user will get all the baseMttAmount after 30 days
        bonusMttAmount = 0;

        // Check if bonus is applicable
        if (markedUpMtsValueUSD > mtsValueUSD) {
            // [6 decimals] Calculate the bonus value USD
            uint256 difference = markedUpMtsValueUSD - mtsValueUSD;

            // [18 decimals] Set the bonus duel amount for 90-days lockup
            bonusMttAmount = (difference * mttValueBase) / mttValueUnit;

            // [18 decimals] Set the 1:1 duel amount for 30-days lockup
            baseMttAmount -= bonusMttAmount;
        }
    }

    function convertMts(uint256 _mtsAmount) external nonReentrant {
        require(EOAChecker(), "Must be EOA");

        (uint256 baseMttAmount, uint256 bonusMttAmount) = convertInternal(
            _mtsAmount
        );

        require(
            conversionRemaining - baseMttAmount - bonusMttAmount > 0,
            "insufficient remaining conversion balance"
        );

        conversionRemaining -= (baseMttAmount + bonusMttAmount);

        IERC20(mtsToken).transferFrom(_msgSender(), address(this), _mtsAmount);

        IConvestionVestingMTT(vesting).allocateMTT(
            _msgSender(),
            baseMttAmount,
            bonusMttAmount
        );

        // Emit event
        emit ConvertMtsEvent(
            _msgSender(),
            _mtsAmount,
            baseMttAmount,
            bonusMttAmount
        );
    }

    function swapMtsAndStakeMtt(
        uint256 _mtsAmount,
        uint32 _stakePeriodDays
    ) external {
        require(EOAChecker(), "Must be EOA");

        (uint256 baseMttAmount, uint256 bonusMttAmount) = convertInternal(
            _mtsAmount
        );

        require(
            conversionRemaining - baseMttAmount - bonusMttAmount > 0,
            "insufficient remaining conversion balance"
        );

        conversionRemaining -= (baseMttAmount + bonusMttAmount);

        IERC20(mtsToken).transferFrom(_msgSender(), address(this), _mtsAmount);

        IConvestionStakingMTT(staking).stake(
            _msgSender(),
            baseMttAmount + bonusMttAmount,
            _stakePeriodDays
        );

        // Emit event
        emit SwapMtsAndStakeMttEvent(
            _msgSender(),
            _mtsAmount,
            _stakePeriodDays
        );
    }

    function withdraw(address _token, uint256 amount) external onlyOwner {
        if (amount == 0) {
            amount = IERC20(_token).balanceOf(address(this));
        }
        IERC20(_token).transfer(owner(), amount);
    }

    /* Helpers */

    function isContract(address addr) internal view returns (bool) {
        uint size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }

    function EOAChecker() internal view returns (bool) {
        return _msgSender() == tx.origin;
    }
}
