// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./ERC20/ERC20Custom.sol";
import "./interfaces/ITreasury.sol";
import "./interfaces/IOracle.sol";
import "./interfaces/ICollateralRatioPolicy.sol";

contract CollateralRatioPolicyV2 is Ownable, ICollateralRatioPolicy, Initializable {
    address public iron;
    address public titan;
    address public treasury;
    address public oracleIron;
    address public oracleTitan;

    address[] public titanExcludedAddresses;
    mapping(address => bool) public mappingTitanExcludedAddresses;

    // Constants for various precisions
    uint256 private constant PRICE_PRECISION = 1e6;
    uint256 private constant RATIO_PRECISION = 1e6;
    uint256 private constant COLLATERAL_RATIO_MAX = 1e6;
    uint256 private constant MAX_RATIO_STEP = 2500;

    // collateral_ratio
    uint256 public override target_collateral_ratio; // 6 decimals of precision
    uint256 public override effective_collateral_ratio; // 6 decimals of precision

    uint256 public last_refresh_cr_timestamp;
    uint256 public refresh_cooldown = 3600; // Seconds to wait before being able to run refreshCollateralRatio() again

    uint256 public ratio_step_up = 2500; // step changed when ratio increase
    uint256 public ratio_step_down = 500; // step changed when ratio decrease

    uint256 public titan_mcap_threshold = 700000; // 70%

    uint256 public price_band = 5000; // deviation from price target to move collateral ratio
    uint256 private constant price_target = 1000000; // pegged to $1 - with 6 precision numbers

    bool public collateral_ratio_paused = false; // during bootstraping phase, collateral_ratio will be fixed at 100%
    bool public using_effective_collateral_ratio = true; // toggle the effective collateral ratio usage

    /* ========== EVENTS ============= */

    event TreasuryChanged(address indexed newTreasury);
    event CollateralRatioUpdated(uint256 _tcr, uint256 _ecr);

    /* ========== CONSTRUCTOR ========== */

    function initialize(
        address _treasury,
        address _iron,
        address _titan,
        address _oracleIron,
        address _oracleTitan
    ) external onlyOwner initializer {
        iron = _iron;
        titan = _titan;
        treasury = _treasury;
        setOracleIron(_oracleIron);
        setOracleTitan(_oracleTitan);
    }

    /* ========== VIEWS ========== */

    function calcEffectiveCollateralRatio() public view returns (uint256) {
        if (!using_effective_collateral_ratio) {
            return target_collateral_ratio;
        }
        uint256 total_collateral_value = ITreasury(treasury).globalCollateralValue();
        uint256 total_supply_iron = IERC20(iron).totalSupply();
        uint256 ecr = (total_collateral_value * PRICE_PRECISION) / total_supply_iron;
        if (ecr > COLLATERAL_RATIO_MAX) {
            return COLLATERAL_RATIO_MAX;
        }
        return ecr;
    }

    function getTitanMarketCap() public view returns (uint256) {
        IERC20 _titan = IERC20(titan);
        uint256 titanTotalSupply = _titan.totalSupply();
        uint256 excludedBalance = 0;
        for (uint256 i = 0; i < titanExcludedAddresses.length; i++) {
            excludedBalance += _titan.balanceOf(titanExcludedAddresses[i]);
        }
        return titanTotalSupply - excludedBalance;
    }

    function calcTargetCollateralRatio() public view returns (uint256 _newTCR) {
        // if collateral_ratio_paused, get the previous value
        if (collateral_ratio_paused) {
            _newTCR = target_collateral_ratio;
        } else {
            uint256 _total_supply_iron = IERC20(iron).totalSupply();
            uint256 _titan_portion =
                (_total_supply_iron * (COLLATERAL_RATIO_MAX - target_collateral_ratio)) / RATIO_PRECISION;
            uint256 _titan_coverage_threshold = (getTitanMarketCap() * titan_mcap_threshold) / RATIO_PRECISION;
            // titan mcap threshold < algorithmic portion of iron_supply. Need to increase `collateral_ratio`
            if (_titan_portion > _titan_coverage_threshold) {
                _newTCR = _increaseTargetCollateralRatio();
            } else {
                uint256 iron_price = IOracle(oracleIron).consult();
                // IRON price is below $1 + `price_band`. Need to decrease `collateral_ratio`
                if (iron_price > (price_target + price_band)) {
                    _newTCR = _decreaseTargetCollateralRatio();
                }
                // IRON price is below $1 - `price_band`. Need to increase `collateral_ratio`
                else if (iron_price < (price_target - price_band)) {
                    _newTCR = _increaseTargetCollateralRatio();
                }
            }
        }
    }

    function _increaseTargetCollateralRatio() internal view returns (uint256) {
        if ((target_collateral_ratio + ratio_step_up) >= COLLATERAL_RATIO_MAX) {
            return COLLATERAL_RATIO_MAX;
        } else {
            return target_collateral_ratio + ratio_step_up;
        }
    }

    function _decreaseTargetCollateralRatio() internal view returns (uint256) {
        if (target_collateral_ratio < ratio_step_down) {
            return 0;
        } else {
            return target_collateral_ratio - ratio_step_down;
        }
    }

    /* ========== PUBLIC FUNCTIONS ========== */

    function refreshCollateralRatio() public {
        require(
            block.timestamp - last_refresh_cr_timestamp >= refresh_cooldown,
            "Must wait for the refresh cooldown since last refresh"
        );
        target_collateral_ratio = calcTargetCollateralRatio();
        effective_collateral_ratio = calcEffectiveCollateralRatio();
        last_refresh_cr_timestamp = block.timestamp;
        emit CollateralRatioUpdated(target_collateral_ratio, effective_collateral_ratio);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function setRatioStep(uint256 _ratio_step_up, uint256 _ratio_step_down) external onlyOwner {
        require(_ratio_step_down <= MAX_RATIO_STEP && _ratio_step_up <= MAX_RATIO_STEP, "> MAX_RATIO_STEP");
        ratio_step_up = _ratio_step_up;
        ratio_step_down = _ratio_step_down;
    }

    function setRefreshCooldown(uint256 _refresh_cooldown) external onlyOwner {
        refresh_cooldown = _refresh_cooldown;
    }

    function setTitanMcapThreshold(uint256 _new_threshold) external onlyOwner {
        titan_mcap_threshold = _new_threshold;
    }

    function setPriceBand(uint256 _price_band) external onlyOwner {
        price_band = _price_band;
    }

    function setTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), "invalidAddress");
        treasury = _treasury;
        emit TreasuryChanged(treasury);
    }

    function addTitanExcludedAddresses(address[] calldata addrs) external onlyOwner {
        for (uint256 i = 0; i < addrs.length; i++) {
            if (!mappingTitanExcludedAddresses[addrs[i]]) {
                mappingTitanExcludedAddresses[addrs[i]] = true;
                titanExcludedAddresses.push(addrs[i]);
            }
        }
    }

    function removeTitanExcludedAddress(address addr) external onlyOwner {
        require(mappingTitanExcludedAddresses[addr], "Address not added");
        delete mappingTitanExcludedAddresses[addr];
        for (uint256 i = 0; i < titanExcludedAddresses.length; i++) {
            if (titanExcludedAddresses[i] == addr) {
                titanExcludedAddresses[i] = titanExcludedAddresses[titanExcludedAddresses.length - 1];
                break;
            }
        }
        titanExcludedAddresses.pop();
    }

    // use to retstore CRs incase of using new Treasury
    function reset(uint256 _target_collateral_ratio, uint256 _effective_collateral_ratio) external onlyOwner {
        require(
            _target_collateral_ratio <= COLLATERAL_RATIO_MAX && _effective_collateral_ratio <= COLLATERAL_RATIO_MAX,
            "invalidRatio"
        );
        target_collateral_ratio = _target_collateral_ratio;
        effective_collateral_ratio = _effective_collateral_ratio;
    }

    function toggleCollateralRatio() public onlyOwner {
        collateral_ratio_paused = !collateral_ratio_paused;
    }

    function toggleEffectiveCollateralRatio() public onlyOwner {
        using_effective_collateral_ratio = !using_effective_collateral_ratio;
    }

    function setOracleIron(address _oracleIron) public onlyOwner {
        require(_oracleIron != address(0), "invalidAddress");
        oracleIron = _oracleIron;
    }

    function setOracleTitan(address _oracleTitan) public onlyOwner {
        require(_oracleTitan != address(0), "invalidAddress");
        oracleTitan = _oracleTitan;
    }
}
