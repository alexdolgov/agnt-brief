//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";

import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "./interfaces/IBTCMTSale.sol";

contract MintoAutofarmV2 is
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    bytes32 public constant BACKEND_ROLE = keccak256("BACKEND_ROLE");
    uint256 private constant _DAY_DURATION = 1 days;
    uint16 private constant _DENOMINATOR = 10000;

    address public usdt;
    address public btcb;
    address public btcmt;
    ISwapRouter public router;
    IBTCMTSale public crowdsale;

    uint256 public start;
    uint256 public totalShares;
    uint64 public lockupDuration;
    uint256 public allTimeTotalMined;

    BonusSystem public bonusStatus;

    ExchangeParameters private _exchangeParams;
    EnumerableSetUpgradeable.AddressSet private _stakers;

    mapping(address => StakeRecord) public stakingInfo;
    mapping(uint256 => DepositRecord) public rewardDeposits; // in BTCMT
    mapping(uint256 => uint256) private _rewardDeposits; // in BTCB

    struct StakeRecord {
        uint256 share;
        uint256 lockEnd;
    }

    struct ExchangeParameters {
        bool dex;
        address[] pathForDex;
        uint24[] feesForDex;
        bytes pathForDexBytes;
        address[] pathForSale;
        uint24[] feesForSale;
        bytes pathForSaleBytes;
    }

    struct DepositRecord {
        uint256 amountOfReward;
        uint256 amountOfBonuses;
        uint256 amountOfShares;
        uint256 totalStaked;
    }

    struct BonusSystem {
        uint16 perc;
        uint256 bonusPool;
    }

    event AddBonuses(uint256 amount);
    event WithdrawBonesus(uint256 amount);
    event Stake(uint256 day, address user, uint256 amount);
    event Unstake(uint256 day, address user, uint256 amount);
    event RewardDeposit(uint256 day, uint256 amount);
    event BonusDistribute(uint256 day, uint256 amount);
    event ChangeBonusPercent(uint16 newPerc);

    /** @notice Function to initialize contract (constructor)
     * @dev available for intializer
     * @param _usdt usdt token address
     * @param _btcb btcb token address
     * @param _btcmt btcmt token address
     * @param _router pancake router address
     * @param _crowdsale BTCMTSale contract address
     * @param _backend address
     * @param _initialConfiguration exchange configuration
     */
    function initialize(
        address _usdt,
        address _btcb,
        address _btcmt,
        address _router,
        address _crowdsale,
        address _backend,
        ExchangeParameters calldata _initialConfiguration
    ) public initializer {
        require(
            _btcmt != address(0) &&
                _router != address(0) &&
                _crowdsale != address(0) &&
                _btcb != address(0) &&
                _usdt != address(0) &&
                _backend != address(0),
            "MintoAutofarmV2: 0x00"
        );

        _exchangeParams = _initialConfiguration;

        if (_initialConfiguration.dex) {
            require(
                _initialConfiguration.pathForDex.length > 0 &&
                    _initialConfiguration.pathForDex[
                        _initialConfiguration.pathForDex.length - 1
                    ] ==
                    _btcmt &&
                    _initialConfiguration.pathForDex[0] == _btcb &&
                    _initialConfiguration.feesForDex.length == _initialConfiguration.pathForDex.length - 1,
                "MintoAutofarmV2: wrong initial config 1"
            );
            _exchangeParams.pathForDexBytes = _computePath(_initialConfiguration.pathForDex, _initialConfiguration.feesForDex);
        }
        else {
            require(
                _initialConfiguration.pathForSale.length > 0 &&
                    _initialConfiguration.pathForSale[
                        _initialConfiguration.pathForSale.length - 1
                    ] ==
                    _usdt &&
                    _initialConfiguration.pathForSale[0] == _btcb &&
                    _initialConfiguration.feesForSale.length == _initialConfiguration.pathForSale.length - 1,
                "MintoAutofarmV2: wrong initial config 2"
            );
            _exchangeParams.pathForSaleBytes = _computePath(_initialConfiguration.pathForSale, _initialConfiguration.feesForSale);
        }

        start = block.timestamp;
        btcmt = _btcmt;
        btcb = _btcb;
        usdt = _usdt;
        router = ISwapRouter(_router);
        crowdsale = IBTCMTSale(_crowdsale);

        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(BACKEND_ROLE, _backend);
    }

    /** @notice Function to change exchange path
     * @dev available for admin only
     * @param _newConfig new configuraion
     */
    function changeExchangeConfiguration(
        ExchangeParameters calldata _newConfig
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_newConfig.dex) {
            if (_newConfig.pathForDex.length > 0) {
                require(
                    _newConfig.pathForDex[_newConfig.pathForDex.length - 1] ==
                        btcmt &&
                        _newConfig.pathForDex[0] == btcb &&
                        _newConfig.feesForDex.length == _newConfig.pathForDex.length - 1,
                    "MintoAutofarmV2: wrong exchange config"
                );
                _exchangeParams.pathForDex = _newConfig.pathForDex;
                _exchangeParams.feesForDex = _newConfig.feesForDex;
            } else
                require(
                    _exchangeParams.pathForDex.length > 0,
                    "MintoAutofarmV2: empty path for dex exchange"
                );
            _exchangeParams.pathForDexBytes = _computePath(_exchangeParams.pathForDex, _exchangeParams.feesForDex);
        } else {
            if (_newConfig.pathForSale.length > 0) {
                require(
                    _newConfig.pathForSale[_newConfig.pathForSale.length - 1] ==
                        usdt &&
                        _newConfig.pathForSale[0] == btcb &&
                        _newConfig.feesForSale.length == _newConfig.pathForSale.length - 1,
                    "MintoAutofarmV2: wrong exchange config"
                );
                _exchangeParams.pathForSale = _newConfig.pathForSale;
                _exchangeParams.feesForSale = _newConfig.feesForSale;
            } else
                require(
                    _exchangeParams.pathForSale.length > 0,
                    "MintoAutofarmV2: empty path for sale exchange"
                );
            _exchangeParams.pathForSaleBytes = _computePath(_exchangeParams.pathForSale, _exchangeParams.feesForSale);
        }

        _exchangeParams.dex = _newConfig.dex;
    }

    /** @notice Function to change lockup duration
     * @dev available for admin only
     * @param _newDuration new lockup value
     */
    function changeLockupDuration(
        uint64 _newDuration
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        lockupDuration = _newDuration;
    }

    /** @notice Function to add bonus tokens
     * @dev available for admin only
     * @param amount amount of BTCMT to put to the contract as bonuses
     */
    function addBonusTokens(
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(amount > 0, "MintoAutofarmV2: zero amount");
        bonusStatus.bonusPool += amount;
        IERC20Upgradeable(btcmt).safeTransferFrom(
            _msgSender(),
            address(this),
            amount
        );

        emit AddBonuses(amount);
    }

    /** @notice Function to withdraw bonus tokens
     * @dev available for admin only
     * @param amount amount of bonuses to withdraw from the contract
     */
    function withdrawBonusTokens(
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(
            amount > 0 && bonusStatus.bonusPool >= amount,
            "MintoAutofarmV2: wrong amount"
        );
        bonusStatus.bonusPool -= amount;
        IERC20Upgradeable(btcmt).safeTransfer(_msgSender(), amount);

        emit WithdrawBonesus(amount);
    }

    /** @notice Function to change bonus system (bonus percent)
     * @dev available for admin only
     * @param perc bonus percent
     */
    function setBonusVars(uint16 perc) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(perc <= _DENOMINATOR, "MintoAutofarmV2: wrong percent");
        bonusStatus.perc = perc;
        emit ChangeBonusPercent(perc);
    }

    /** @notice Function for backend to put reward to the contract
     * @dev reward put into the contract, swaps into BTCMT and shares between users
     * @param amount amount of reward token
     */
    function rewardTokenDonation(
        uint256 amount,
        uint256 amountOutMin
    ) external onlyRole(BACKEND_ROLE) nonReentrant {
        require(
            amount > 0 && amountOutMin > 0,
            "MintoAutofarmV2: wrong input amounts"
        );
        require(totalShares > 0, "MintoAutofarmV2: there is no stakers");
        require(
            rewardDeposits[currentDay()].amountOfReward == 0,
            "MintoAutofarmV2: once per day"
        );

        uint256 outputAmount;
        uint256 bonusAmount;
        uint256 totalStakedAmount = totalStake();
        IERC20Upgradeable(btcb).safeTransferFrom(
            _msgSender(),
            address(this),
            amount
        );
        // get rewards
        IERC20Upgradeable(btcb).safeApprove(address(router), amount);
        if (_exchangeParams.dex) {
            outputAmount = router.exactInput(ISwapRouter.ExactInputParams(
                _exchangeParams.pathForDexBytes,
                address(this),
                block.timestamp,
                amount,
                amountOutMin
            ));
        } else {
            uint256 output = router.exactInput(ISwapRouter.ExactInputParams(
                _exchangeParams.pathForSaleBytes,
                address(this),
                block.timestamp,
                amount,
                amountOutMin
            ));
            IERC20Upgradeable(usdt).safeIncreaseAllowance(
                address(crowdsale),
                output
            );
            uint256 price = crowdsale.price();
            require(price > 0, "MintoAutofarmV2: zero crowdsale price");
            outputAmount = (output * 10 ** 18) / price;
            crowdsale.buy(outputAmount, 0);
        }
        if (IERC20Upgradeable(btcb).allowance(address(this), address(router)) > 0) {
            IERC20Upgradeable(btcb).safeApprove(address(router), 0);
        }
        // get bonuses
        if (bonusStatus.perc > 0 && bonusStatus.bonusPool > 0) {
            bonusAmount =
                (totalStakedAmount * bonusStatus.perc) /
                (365 * uint256(_DENOMINATOR));
            if (bonusAmount > bonusStatus.bonusPool)
                bonusAmount = bonusStatus.bonusPool;
            bonusStatus.bonusPool -= bonusAmount;
        }

        _rewardDeposits[currentDay()] = amount;
        allTimeTotalMined += outputAmount;
        rewardDeposits[currentDay()] = DepositRecord(
            outputAmount,
            bonusAmount,
            totalShares,
            totalStakedAmount
        );
        emit RewardDeposit(currentDay(), outputAmount);
        emit BonusDistribute(currentDay(), bonusAmount);
    }

    /** @notice Function to stake tokens
     * @param amount amount of BTCMT for staking
     */
    function stake(uint256 amount) external nonReentrant {
        require(amount > 0, "MintoAutofarmV2: zero amount");

        uint256 pool = totalStake();
        uint256 share;
        if (totalShares == 0) share = amount;
        else share = (amount * totalShares) / pool;
        if (stakingInfo[_msgSender()].share == 0) _stakers.add(_msgSender());
        stakingInfo[_msgSender()].share += share;
        stakingInfo[_msgSender()].lockEnd = block.timestamp + lockupDuration;
        totalShares += share;

        IERC20Upgradeable(btcmt).safeTransferFrom(
            _msgSender(),
            address(this),
            amount
        );

        emit Stake(currentDay(), _msgSender(), amount);
    }

    /** @notice Function to unstake tokens
     * @param amount amount of BTCMT for unstaking
     */
    function unstake(uint256 amount) external nonReentrant {
        uint256 userTotal = userStake(_msgSender());
        require(
            amount > 0 && userTotal >= amount,
            "MintoAutofarmV2: wrong amount"
        );
        require(
            stakingInfo[_msgSender()].lockEnd < block.timestamp,
            "MintoAutofarmV2: your deposit locked"
        );
        uint256 shareToWithdraw = (amount == userTotal)
            ? stakingInfo[_msgSender()].share
            : (amount * totalShares) / totalStake();
        stakingInfo[_msgSender()].share -= shareToWithdraw;
        totalShares -= shareToWithdraw;
        if (stakingInfo[_msgSender()].share == 0) _stakers.remove(_msgSender());
        IERC20Upgradeable(btcmt).safeTransfer(_msgSender(), amount);
        emit Unstake(currentDay(), _msgSender(), amount);
    }

    /** @notice Shows user's staked amount
     * @param user address
     * @return _stake user deposit amount
     */
    function userStake(address user) public view returns (uint256 _stake) {
        if (totalShares == 0) return 0;
        _stake = (totalStake() * stakingInfo[user].share) / totalShares;
    }

    /** @notice Shows the current contract day
     * @return day number
     */
    function currentDay() public view returns (uint256) {
        return (block.timestamp - start) / _DAY_DURATION;
    }

    /** @notice Shows today's reward in BTCB
     * @return today's reward amount in BTCB
     */
    function todayReward() external view returns (uint256) {
        return _rewardDeposits[currentDay()];
    }

    /** @notice Shows actual list of stakers
     * @return stakers addresses array
     */
    function stakers() public view returns (address[] memory) {
        return _stakers.values();
    }

    /** @notice Shows actual number of stakers
     * @return total amount of actual stakers
     */
    function totalStakers() public view returns (uint256) {
        return _stakers.length();
    }

    /** @notice Shows the actual total staker's balance
     * @return total stake amount (sum of all user deposits)
     */
    function totalStake() public view returns (uint256) {
        return
            IERC20Upgradeable(btcmt).balanceOf(address(this)) -
            bonusStatus.bonusPool;
    }

    /** @notice Shows the method BTCB to BTCMT exchange
     * @return throughDex true - purchase BTCMT from dex, false - purchase BTCMT from crowdsale
     * @return pathForDex an array of token addresses for swap (BTCB -> BTCMT)
     * @return feesForDex an array of fees in pools on path
     * @return pathForDexBytes full path with fees in bytes representation
     * @return pathForSale an array of token addresses for swap (BTCB -> USDT)
     * @return feesForSale an array of fees in pools on path
     * @return pathForSaleBytes full path with fees in bytes representation
     */
    function getExchangeParameters()
        external
        view
        returns (
            bool throughDex,
            address[] memory pathForDex,
            uint24[] memory feesForDex,
            bytes memory pathForDexBytes,
            address[] memory pathForSale,
            uint24[] memory feesForSale,
            bytes memory pathForSaleBytes
        )
    {
        return (
            _exchangeParams.dex,
            _exchangeParams.pathForDex,
            _exchangeParams.feesForDex,
            _exchangeParams.pathForDexBytes,
            _exchangeParams.pathForSale,
            _exchangeParams.feesForSale,
            _exchangeParams.pathForSaleBytes
        );
    }

    function _computePath(address[] memory path, uint24[] memory fees) private pure returns(bytes memory) {
        bytes memory result;
        for (uint256 i; i < fees.length; i++) {
            result = bytes.concat(result, bytes20(path[i]), bytes3(fees[i]));
        }
        return bytes.concat(result, bytes20(path[path.length - 1]));
    }
}
