// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/**
 * @title Legacy Economics Contract
 * @dev Now replaced by the EconomicsFactory contract and individual Economics contracts of integrators
 * @author GET Protocol
 * @notice Contract responsible for on-chain fuel accounting per integrator
 * @dev Fuel strictly refers to $GET
 *
 * @dev Fuel is denominated in 18 decimals
 */

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
// solhint-disable-next-line max-line-length
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { AuthModifiers } from "../abstract/AuthModifiers.sol";
import { IEconomics, IEventImplementation } from "../test/interfaces/IEconomics.sol";

contract Economics is IEconomics, AuthModifiers, OwnableUpgradeable, ReentrancyGuardUpgradeable, UUPSUpgradeable {
    mapping(address => RelayerData) public relayerData;
    mapping(uint32 => IntegratorData) public integratorData;
    mapping(uint32 => DynamicRates) public integratorRates;
    DynamicRates public protocolRates;
    SpentFuel public spentFuel;
    IERC20 public fuelToken;
    uint24 public basicTaxRate;
    uint32 public integratorCount;
    uint256 public salesTaxFuel;
    address public salesTaxFuelDestination;
    uint256 public spentFuelOnCredit; // Unable to upgrade spentFuel struct, assign as new variable.

    address public economicsFactory; // Contract address to migrate Integrator data to.

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    /**
     * @dev Initialization function for proxy contract
     * @param _registry the Registry contract address
     * @param _fuelToken $GET token contract address
     * @param _salesTaxFuelDestination address sales tax is collected to
     * @param _basicTaxRate tax rate per basic action e.g scan
     */
    // solhint-disable-next-line func-name-mixedcase
    function __Economics_init(
        address _registry,
        address _fuelToken,
        address _salesTaxFuelDestination,
        uint24 _basicTaxRate,
        DynamicRates calldata _protocolRates
    ) public initializer {
        __Ownable_init();
        __AuthModifiers_init(_registry);
        __Economics_init_unchained(_fuelToken, _salesTaxFuelDestination, _basicTaxRate, _protocolRates);
    }

    // solhint-disable-next-line func-name-mixedcase
    function __Economics_init_unchained(
        address _fuelToken,
        address _salesTaxFuelDestination,
        uint24 _basicTaxRate,
        DynamicRates calldata _protocolRates
    ) internal initializer {
        fuelToken = IERC20(_fuelToken);
        setBasicTaxRate(_basicTaxRate);
        setProtocolRates(_protocolRates);
        setSalesTaxFuelDestination(_salesTaxFuelDestination);
    }

    // MODIFIERS //
    ///  @dev filters out unconfigured integrators
    modifier onlyConfigured(address _relayerAddress) {
        require(
            integratorData[relayerData[_relayerAddress].integratorIndex].isConfigured,
            "Economics: integrator not configured"
        );
        _;
    }

    /// OPERATIONAL FUNCTIONS

    /**
     * @notice Tops up an integrator
     * @dev It's called by the TopUp contract and transfers $GET to this contract
     *
     * @dev It increases integrator available fuel
     *
     * @dev It updates integrator average $GET price at top up
     * @param _integratorIndex index of the integrator to top up
     * @param _sender account that $GET should be transferred from
     * @param _total amount of $GET that will be topped up, inclusive of sales tax
     * @param _price USD price per GET that is paid and will be locked
     */
    function topUpIntegrator(
        uint32 _integratorIndex,
        address _sender,
        uint256 _total,
        uint256 _price
    ) external onlyTopUp returns (uint256) {
        IntegratorData storage integrator = integratorData[_integratorIndex];
        DynamicRates storage _integratorRates = integratorRates[_integratorIndex];

        require(integrator.isConfigured, "Economics: integrator not configured");
        require(_total > 0, "Economics: zero amount");
        require(_price > 0, "Economics: incorrect price");
        require(fuelToken.allowance(_sender, address(this)) >= _total, "Economics: sender lacks allowance");

        bool _topUpFuel = fuelToken.transferFrom(_sender, address(this), _total);
        require(_topUpFuel, "Economics: transfer failed! Perhaps balance might be too low");

        uint256 _accountTopUpAmount = (_total * 1_000_000) / (1_000_000 + _integratorRates.salesTaxRate);
        uint256 _salesTaxAmount = _total - _accountTopUpAmount;
        uint256 _newAveragePrice = _calculateAveragePrice(
            _accountTopUpAmount,
            _price,
            integrator.availableFuel,
            integrator.price
        );

        salesTaxFuel += _salesTaxAmount;
        integrator.availableFuel += _accountTopUpAmount;
        integrator.price = _newAveragePrice;

        emit IntegratorToppedUp(_integratorIndex, _total, _price, _newAveragePrice, _salesTaxAmount);
        return integrator.availableFuel;
    }

    /**
     * @notice Internal function that calculates and reserves fuel upon primary or secondary sale
     * @dev It receives a minimum and maximum fee and returns a value within the range
     *
     * @dev It reduces integrator available fuel and increases reserved fuel
     * @param integrator integrator struct
     * @param _ticketActions array of IEventImplementation.TicketAction structs for which fuel is to be reserved
     * @param _product Rate struct containing fee info for the product
     * @param _protocol Rate struct containing fee info for the protocol
     * @return _fuel total fuel reserved
     * @return _fuelProtocol portion of _fuel for the protocol
     */

    function _reserveFuelForRate(
        IntegratorData storage integrator,
        IEventImplementation.TicketAction[] calldata _ticketActions,
        Rate memory _product,
        Rate memory _protocol
    ) internal returns (uint256, uint256) {
        if (!integrator.isBillingEnabled) return (0, 0);

        // Both the integrator's average price (price) and the fuel are normalized to 1e18, here we do the same for the
        // minFee and maxFee for use in comparisons later in the function.
        uint256 _min = uint256(_product.minFee) * 1e15;
        uint256 _max = uint256(_product.maxFee) * 1e15;

        // Deductions represent the fees that the Protocol charges for tickets as a baseline fee for usage. This forms
        // a part of the total fee, where the Protocol 'eats first'. E.g. if the Protocol has a $0.02 fixed fee for
        // minting tickets, and the SaaS has $0.10, then the deduction represents the Protocol fee portion and will be
        // allocated prior to the $0.10. The total fee in this example will still be $0.10 only that the Protocol takes
        // the first slice.
        uint256 _protocolMin = uint256(_protocol.minFee) * 1e15;
        uint256 _protocolMax = uint256(_protocol.maxFee) * 1e15;

        // We store a minimum and maximum fee (in USD) for each integrator which denotes the maximum and minimum fuel
        // we can collect for each ticket sale. We first calculate the amount of fuel required per-ticket in USD to
        // 1e18 precision and then compare against the min/max to determine whether it's in range. 0 denotes no fee
        // limit.
        //
        // When the minFee is 0 we can take that as-is because _fuelUsd would be greater and fall into another
        // condition, however when the maxFee is 0 we need to treat this as a special case so that we don't use 0 as
        // the fee. Hence this is checked for first.
        //
        // Full workings:
        //
        // _fuelUsd[1e18] = (basePrice[1e3] * 1e15) * (rate[1e6] / 1e6);
        //   => _fuelUsd[1e18] = (basePrice[1e3] * 1e9) / rate[1e6];
        //
        // _fuel[1e18] = (_fuelUsd[1e18] * 1e18) / price[1e18];
        uint256 _fuel = 0;
        uint256 _protocolFuel = 0;
        for (uint256 i = 0; i < _ticketActions.length; i++) {
            uint256 _fuelUsd = uint256(_ticketActions[i].basePrice) * _product.rate * 1e9;
            uint256 _protocolFuelUsd = uint256(_ticketActions[i].basePrice) * _protocol.rate * 1e9;

            if (_protocolFuelUsd < _protocolMin) {
                _protocolFuel += (_protocolMin * 1e18) / integrator.price;
            } else if (_protocolFuelUsd > _protocolMax && _protocolMax != 0) {
                _protocolFuel += (_protocolMax * 1e18) / integrator.price;
            } else {
                _protocolFuel += (_protocolFuelUsd * 1e18) / integrator.price;
            }

            if (_fuelUsd < _min) {
                _fuel += (_min * 1e18) / integrator.price;
            } else if (_fuelUsd > _max && _max != 0) {
                _fuel += (_max * 1e18) / integrator.price;
            } else {
                _fuel += (_fuelUsd * 1e18) / integrator.price;
            }
        }

        require(_fuel < integrator.availableFuel, "Economics: insufficient available fuel");

        integrator.availableFuel -= _fuel;
        integrator.reservedFuel += _fuel;

        if (_protocolFuel >= _fuel) _protocolFuel = _fuel;
        integrator.reservedFuelProtocol += _protocolFuel;

        return (_fuel, _protocolFuel);
    }

    /**
     * @notice Reserves fuel on a primary sale
     * @dev It can only be called by an Event contract for a configured integrator
     *
     * @dev It increases an integrator's active ticket count
     * @param _relayerAddress integrator relayer address
     * @param _ticketActions array of IEventImplementation.TicketAction structs for which sale happens
     * @return _fuel total fuel reserved
     * @return _fuelProtocol portion of _fuel for the protocol
     */

    function reserveFuelPrimarySale(
        address _relayerAddress,
        IEventImplementation.TicketAction[] calldata _ticketActions
    ) public onlyEvent onlyConfigured(_relayerAddress) returns (uint256, uint256) {
        uint32 _integratorIndex = relayerData[_relayerAddress].integratorIndex;
        DynamicRates storage _integratorRates = integratorRates[_integratorIndex];
        IntegratorData storage integrator = integratorData[_integratorIndex];

        (uint256 _fuel, uint256 _fuelProtocol) = _reserveFuelForRate(
            integrator,
            _ticketActions,
            Rate(_integratorRates.minFeePrimary, _integratorRates.maxFeePrimary, _integratorRates.primaryRate),
            Rate(protocolRates.minFeePrimary, protocolRates.maxFeePrimary, protocolRates.primaryRate)
        );

        integrator.activeTicketCount += uint32(_ticketActions.length);
        emit FuelReservedPrimary(_integratorIndex, uint32(_ticketActions.length), _fuel, _fuelProtocol);
        return (_fuel, _fuelProtocol);
    }

    /**
     * @notice Reserves fuel on a resale
     * @dev can only be called by an Event contract for a configured integrator
     *
     * @dev It does NOT increases an integrator's active ticket count
     * @param _relayerAddress integrator relayer address
     * @param _ticketActions array of IEventImplementation.TicketAction structs for which resale happens
     * @return _fuel total fuel reserved
     * @return _fuelProtocol portion of _fuel for the protocol
     */

    function reserveFuelSecondarySale(
        address _relayerAddress,
        IEventImplementation.TicketAction[] calldata _ticketActions
    ) public onlyEvent onlyConfigured(_relayerAddress) returns (uint256, uint256) {
        uint32 _integratorIndex = relayerData[_relayerAddress].integratorIndex;
        DynamicRates storage _integratorRates = integratorRates[_integratorIndex];
        IntegratorData storage integrator = integratorData[_integratorIndex];

        (uint256 _fuel, uint256 _fuelProtocol) = _reserveFuelForRate(
            integrator,
            _ticketActions,
            Rate(_integratorRates.minFeeSecondary, _integratorRates.maxFeeSecondary, _integratorRates.secondaryRate),
            Rate(protocolRates.minFeeSecondary, protocolRates.maxFeeSecondary, protocolRates.secondaryRate)
        );

        emit FuelReservedSecondary(_integratorIndex, uint32(_ticketActions.length), _fuel, _fuelProtocol);
        return (_fuel, _fuelProtocol);
    }

    /**
     * @notice Taxes an integrator for a basic action, i.e scan
     * @dev It can only be called by an Event contract
     *
     * @dev It deducts the calculated fuel from the integrator's reserved fuel
     *
     * @dev It adds the deducted fuel to the total spent fuel
     * @param _relayerAddress - relayer address of an integrator
     * @param _ticketCount - number of tickets for which fuel is to be deducted
     * @return _fuelToSpend - amount of fuel for all tickets spent
     * @return _fuelToSpentProtocol - portion of _fuelToSpend for to the protocol
     */
    function spendBasicAction(
        address _relayerAddress,
        uint32 _ticketCount
    ) public onlyEvent returns (uint256, uint256) {
        IntegratorData storage integrator = integratorData[relayerData[_relayerAddress].integratorIndex];
        if (!integrator.isBillingEnabled) return (0, 0);

        (uint256 _reservedFuel, uint256 _reservedFuelProtocol) = _reservedFuelPerTicket(integrator.index);
        uint256 _fuelToSpend = (basicTaxRate * _reservedFuel * _ticketCount) / 1e6;
        uint256 _fuelToSpendProtocol = (basicTaxRate * _reservedFuelProtocol * _ticketCount) / 1e6;

        integrator.reservedFuel -= _fuelToSpend;
        spentFuel.total += _fuelToSpend;

        // _reservedFuel above is always greater than _reservedFuelProtocol (L170) so this is safe to minus.
        if (integrator.onCredit) {
            spentFuelOnCredit += _fuelToSpend - _fuelToSpendProtocol;
        }

        integrator.reservedFuelProtocol -= _fuelToSpendProtocol;
        spentFuel.protocol += _fuelToSpendProtocol;

        emit BasicTaxCharged(integrator.index, _ticketCount, _fuelToSpend, _fuelToSpendProtocol);
        return (_fuelToSpend, _fuelToSpendProtocol);
    }

    /**
     * @notice Spends the reserved fuel of an integrator
     * @dev It can only be called by an Event contract
     *
     * @dev It adds the deducted fuel to the total spent fuel
     *
     * @dev It deducts the ticketCount from the integrator's ticket count
     * @param _relayerAddress - relayer address of an integrator
     * @param _ticketCount - number of tickets for which fuel is to be deducted
     * @return _fuelToSpend - amount of fuel for all tickets spent
     * @return _fuelToSpendProtocol - portion of _fuelToSpend for to the protocol
     */
    function spendTicketReserved(
        address _relayerAddress,
        uint32 _ticketCount
    ) public onlyEvent returns (uint256, uint256) {
        IntegratorData storage integrator = integratorData[relayerData[_relayerAddress].integratorIndex];
        if (!integrator.isBillingEnabled) return (0, 0);

        (uint256 _reservedFuel, uint256 _reservedFuelProtocol) = _reservedFuelPerTicket(integrator.index);
        uint256 _fuelToSpend = _reservedFuel * _ticketCount;
        uint256 _fuelToSpendProtocol = _reservedFuelProtocol * _ticketCount;

        if (_reservedFuel == 0) return (0, 0);

        require(integrator.reservedFuel >= _fuelToSpend, "Economics: spending more fuel than reserved");
        require(
            integrator.reservedFuelProtocol >= _fuelToSpendProtocol,
            "Economics: spending more protocol fuel than reserved"
        );
        require(integrator.activeTicketCount >= _ticketCount, "Economics: processing more tickets than active");

        integrator.reservedFuel -= _fuelToSpend;
        spentFuel.total += _fuelToSpend;

        // _reservedFuel above is always greater than _reservedFuelProtocol (L170) so this is safe to minus.
        if (integrator.onCredit) {
            spentFuelOnCredit += _fuelToSpend - _fuelToSpendProtocol;
        }

        integrator.reservedFuelProtocol -= _fuelToSpendProtocol;
        spentFuel.protocol += _fuelToSpendProtocol;

        integrator.activeTicketCount -= _ticketCount;
        spentFuel.ticketCount += _ticketCount;

        emit TicketFuelEmptied(integrator.index, _ticketCount, _fuelToSpend, _fuelToSpendProtocol);
        return (_fuelToSpend, _fuelToSpendProtocol);
    }

    /**
     * @dev Moves the salesTaxFuel balance to the caller
     *
     * @dev It can only be called by an integrator admin account
     */
    function collectSalesTaxFuel() public nonReentrant onlyIntegratorAdmin {
        require(salesTaxFuel > 0, "Economics: nothing to collect");
        require(fuelToken.balanceOf(address(this)) >= salesTaxFuel, "Economics: insufficient token balance");
        uint256 _salesTaxFuel = salesTaxFuel;
        salesTaxFuel = 0;
        require(fuelToken.transfer(salesTaxFuelDestination, _salesTaxFuel), "Economics: fuel token transfer failed");
        emit SalesTaxFuelCollected(salesTaxFuelDestination, _salesTaxFuel);
    }

    /**
     * @notice An internal function to process balance difference when correcting an integrator's account balances
     */
    function _processCorrection(uint256 _new, uint256 _old) internal {
        uint256 _difference;
        if (_new != 0 && _new != _old) {
            if (_new > _old) {
                _difference = _new - _old;
                require(
                    fuelToken.transferFrom(msg.sender, address(this), _difference),
                    "Economics: available fuel transfer in failed"
                );
            } else {
                _difference = _old - _new;
                require(fuelToken.transfer(msg.sender, _difference), "Economics: available fuel balance refund failed");
            }
        }
    }

    /**
     * @notice Corrects an integrator's available and reserved fuel balance
     * @dev The available fuel delta is either removed or added to the spentFuel balance
     * @param _integratorIndex index of the integrator in question
     * @param _newAvailableFuel the correct/intended balance of the integrator's available balance
     * @param _newReservedFuel the correct/intended balance of the integrator's reserved balance
     */
    function correctAccountBalance(
        uint32 _integratorIndex,
        uint256 _newAvailableFuel,
        uint256 _newReservedFuel
    ) external nonReentrant onlyIntegratorAdmin {
        IntegratorData storage integrator = integratorData[_integratorIndex];
        uint256 _oldAvailableFuel = integrator.availableFuel;
        uint256 _oldReservedFuel = integrator.reservedFuel;
        uint256 _oldReservedFuelProtocol = integrator.reservedFuelProtocol;

        _processCorrection(_newAvailableFuel, _oldAvailableFuel);
        _processCorrection(_newReservedFuel, _oldReservedFuel);

        integrator.availableFuel = _newAvailableFuel;
        integrator.reservedFuel = _newReservedFuel;
        integrator.reservedFuelProtocol = (integrator.reservedFuelProtocol * _newReservedFuel) / _oldReservedFuel;

        emit AccountBalanceCorrected(
            integrator.index,
            _oldAvailableFuel,
            integrator.availableFuel,
            _oldReservedFuel,
            integrator.reservedFuel,
            _oldReservedFuelProtocol,
            integrator.reservedFuelProtocol
        );
    }

    /**
     * @notice Calculates weighted average $GET price for an integrator during a top up.
     * @dev All params are 18 decimals in precision
     * @param _incomingFuelAmount amount of $GET that is to be topped x10^18
     * @param _incomingPrice USD price per $GET that is being topped up x10^4
     * @param _currentFuelBalance amount of reservedFuel for a relayer x10^18
     * @param _currentPrice current USD price per $GET for a relayer x10^18
     * @return _newPrice new $GET price for the integrator
     */
    function _calculateAveragePrice(
        uint256 _incomingFuelAmount,
        uint256 _incomingPrice,
        uint256 _currentFuelBalance,
        uint256 _currentPrice
    ) internal pure returns (uint256) {
        uint256 _currentUsdValue = _currentFuelBalance * _currentPrice;
        uint256 _incomingUsdValue = _incomingFuelAmount * _incomingPrice;
        uint256 _totalUSDValue = _currentUsdValue + _incomingUsdValue;
        uint256 _totalFuelBalance = _currentFuelBalance + _incomingFuelAmount;
        uint256 _newPrice = _totalUSDValue / _totalFuelBalance;

        return _newPrice;
    }

    /**
     * @notice Creates and configures an integrator
     * @dev It sets the the dynamic rates and relayer for an integrator
     *
     * @dev It can only be called by an integrator admin
     *
     * @dev Dynamic rates are used to determine fuel spent by an integrator per specific ticket interraction
     * @param _name Integrator name
     * @param _relayerAddress an integrator relayer address
     * @param _dynamicRates integrator dynamic rates
     */
    function setupIntegrator(
        string calldata _name,
        address _relayerAddress,
        DynamicRates calldata _dynamicRates,
        uint256 _price
    ) external onlyIntegratorAdmin {
        IntegratorData storage integrator = integratorData[integratorCount];
        integratorRates[integratorCount] = _dynamicRates;
        integrator.index = integratorCount;
        integrator.name = _name;

        activateIntegrator(integrator.index);
        setIntegratorPrice(integrator.index, _price);

        relayerData[_relayerAddress] = RelayerData(integrator.index);

        emit IntegratorConfigured(integratorCount, _name, _relayerAddress, _dynamicRates);
        integratorCount++;
    }

    /**
     * @notice Acitvates an already existing integrator
     * @dev It's called within setupIntegrator
     *
     * @dev It can only be called by an integrator admin
     *
     * @dev It sets both configuration status and billing status to true
     * @param _integratorIndex index of the integrator in question
     */
    function activateIntegrator(uint32 _integratorIndex) public onlyIntegratorAdmin {
        setConfigurationStatus(_integratorIndex, true);
        setBillingStatus(_integratorIndex, true);
        emit IntegratorActivated(_integratorIndex);
    }

    /**
     * @notice Disables an integrator
     * @dev It can only be called by an integrator admin
     *
     * @dev It sets both configuration status and billing status to false
     * @param _integratorIndex index of the integrator in question
     */
    function disableIntegrator(uint32 _integratorIndex) external onlyIntegratorAdmin {
        setConfigurationStatus(_integratorIndex, false);
        setBillingStatus(_integratorIndex, false);
        emit IntegratorDisabled(_integratorIndex);
    }

    /**
     * @notice Adds a relayer to an integrator
     * @dev It can only be called by an integrator admin
     * @param _relayerAddress address to be added as a relayer
     * @param _integratorIndex index of the integrator in question
     */
    function addRelayer(address _relayerAddress, uint32 _integratorIndex) external onlyIntegratorAdmin {
        relayerData[_relayerAddress] = RelayerData(_integratorIndex);
        emit RelayerAdded(_relayerAddress, _integratorIndex);
    }

    /**
     * @notice Detaches a relayer from an integrator
     * @dev It can only be called by an integrator admin
     * @param _relayerAddress address to be detached from an integrator
     */
    function removeRelayer(address _relayerAddress) external onlyIntegratorAdmin {
        emit RelayerRemoved(_relayerAddress, relayerData[_relayerAddress].integratorIndex);
        delete relayerData[_relayerAddress];
    }

    /**
     * @notice Updates an integrator's dynamic rates
     * @param  _integratorIndex the index of the integrator to update
     * @param  _dynamicRates array containing all the dyanmic rates
     */
    function setDynamicRates(
        uint32 _integratorIndex,
        DynamicRates calldata _dynamicRates
    ) external onlyIntegratorAdmin {
        integratorRates[_integratorIndex] = _dynamicRates;
        emit UpdateDynamicRates(_integratorIndex, _dynamicRates);
    }

    /**
     * @notice Updates the protocol rates
     * @param  _protocolRates array containing all the dyanmic rates
     */
    function setProtocolRates(DynamicRates calldata _protocolRates) public onlyOwner {
        protocolRates = _protocolRates;
        emit UpdateProtocolRates(_protocolRates);
    }

    /**
     * @notice Updates the destination address for the sales tax fuel collection
     * @param  _salesTaxFuelDestination destination address
     */
    function setSalesTaxFuelDestination(address _salesTaxFuelDestination) public onlyOwner {
        salesTaxFuelDestination = _salesTaxFuelDestination;
        emit UpdateSalesTaxFuelDestination(_salesTaxFuelDestination);
    }

    /**
     * @notice Enables billing on an integrator
     * @dev It can only be called by an integrator admin
     * @param _integratorIndex index of the integrator in question
     */
    function enableIntegratorBilling(uint32 _integratorIndex) external onlyIntegratorAdmin {
        setBillingStatus(_integratorIndex, true);
        emit EnableIntegratorBilling(_integratorIndex);
    }

    /**
     * @notice Disables billing on an integrator
     * @dev It can only be called by an integrator admin
     * @param _integratorIndex index of the integrator in question
     */
    function disableIntegratorBilling(uint32 _integratorIndex) external onlyIntegratorAdmin {
        setBillingStatus(_integratorIndex, false);
        emit DisableIntegratorBilling(_integratorIndex);
    }

    /**
     * @notice Sets the basic tax rate
     * @dev The basic tax rate is a global variable used to calculate fuel to be taxed on basic actions
     *
     * @dev It can only be called by the contract owner
     * @param _basicTaxRate basic tax rate x10^6
     */
    function setBasicTaxRate(uint24 _basicTaxRate) public onlyOwner {
        require(_basicTaxRate >= 0, "Economics: invalid tax rate");
        emit UpdateBasicTaxRate(basicTaxRate, _basicTaxRate);
        basicTaxRate = _basicTaxRate;
    }

    /**
     * @notice Resets the spentFuel balance.
     * @dev The function is useful for resetting the balance if it doesn't reflect what has been truely collected
     *
     * @dev It can only be called by the contract owner
     * @param _spentFuel spent fuel value
     */
    function setSpentFuel(SpentFuel calldata _spentFuel, uint256 _spentFuelOnCredit) external onlyOwner {
        require(_spentFuel.total > 0, "Economics: new balance invalid");
        require(_spentFuel.protocol > 0, "Economics: new balance invalid");
        emit UpdateSpentFuel(_spentFuel);
        emit UpdateSpentFuelOnCredit(_spentFuelOnCredit);
        spentFuel = _spentFuel;
        spentFuelOnCredit = _spentFuelOnCredit;
    }

    /**
     * @notice Withdraws an asset on this contract to a given address
     * @dev This becomes usefull when migrating an Economics contract to another
     *
     * @dev It can only be called by the contract owner
     * @param _asset contract address of a particular asset
     * @param _to address the asset is sent to
     * @param _amount amount of the asset to be sent
     */
    function emergencyWithdraw(address _asset, address _to, uint256 _amount) external onlyOwner {
        IERC20(_asset).transfer(_to, _amount);
    }

    /**
     * @notice Sets the billing status of an integrator
     * @dev It can only be called by an integrator admin
     * @param _integratorIndex index of integrator in question
     * @param _status billing status; boolean
     */
    function setBillingStatus(uint32 _integratorIndex, bool _status) public onlyIntegratorAdmin {
        integratorData[_integratorIndex].isBillingEnabled = _status;
        emit BillingStatusUpdated(_integratorIndex, _status);
    }

    /**
     * @notice Sets the configuration status of an integrator
     * @dev It can only be called by an integrator admin
     * @param _integratorIndex index of integrator in question
     * @param _status configuration status; boolean
     */
    function setConfigurationStatus(uint32 _integratorIndex, bool _status) public onlyIntegratorAdmin {
        integratorData[_integratorIndex].isConfigured = _status;
        emit ConfigurationStatusUpdated(_integratorIndex, _status);
    }

    /**
     * @notice Sets the average top up price for an integrator
     * @dev It can only be called by an integrator admin
     *
     * @dev usefull in porting contract states between Economics contracts
     * @param _integratorIndex index of integrator in question
     * @param _price integrator average top up price
     */
    function setIntegratorPrice(uint32 _integratorIndex, uint256 _price) public onlyIntegratorAdmin {
        require(_price > 0, "Economics: price must be greater than 0");
        integratorData[_integratorIndex].price = _price;
        emit UpdateIntegratorPrice(_integratorIndex, _price);
    }

    function setEconomicsFactory(address _economicsFactory) external onlyOwner {
        economicsFactory = _economicsFactory;
    }

    /**
     * @notice One time migration function
     * @dev Migorates fuel and integrator data to new Economics contract
     *
     * @dev Can only be called by new contract
     * @return Array of integrator data
     * @return Array of Integrator dynamic rates
     */
    function migrateEconomicsData() external override returns (IntegratorData[] memory, DynamicRates[] memory) {
        require(msg.sender == economicsFactory, "Economics: only economicsFactory call");
        uint256 _fuelBalance = fuelToken.balanceOf(address(this));
        fuelToken.transfer(msg.sender, _fuelBalance);
        return _getIntegratorData();
    }

    /**
     * @notice Internal function to return integrator data and rates
     * @return Array of integrator data
     * @return Array of Integrator dynamic rates
     */
    function _getIntegratorData() internal view returns (IntegratorData[] memory, DynamicRates[] memory) {
        IntegratorData[] memory _integratorData = new IntegratorData[](integratorCount);
        DynamicRates[] memory _dynamicRates = new DynamicRates[](integratorCount);

        for (uint32 i; i < integratorCount; i++) {
            _integratorData[i] = integratorData[i];
            _dynamicRates[i] = integratorRates[i];
        }
        return (_integratorData, _dynamicRates);
    }

    //// VIEW FUNCTIONS ////

    /**
     * @notice Internal view function to calculate the fuel per active ticket of an integrator
     * @param _integratorIndex index of integrator in question
     * @return _reservedPerTicket amount of fuel per ticket
     * @return _reservedProtocolPerTicket protocol fuel reserved per ticket
     */
    function _reservedFuelPerTicket(uint32 _integratorIndex) internal view returns (uint256, uint256) {
        IntegratorData storage integrator = integratorData[_integratorIndex];
        uint256 _reservedPerTicket = integrator.reservedFuel / integrator.activeTicketCount;
        uint256 _reservedProtocolPerTicket = integrator.reservedFuelProtocol / integrator.activeTicketCount;
        return (_reservedPerTicket, _reservedProtocolPerTicket);
    }

    /**
     * @notice Internal function to authorize a contract upgrade
     * @dev The function is a requirement for Openzeppelin's UUPS upgradeable contracts
     *
     * @dev can only be called by the contract owner
     */
    function _authorizeUpgrade(address) internal override onlyOwner {}
}
