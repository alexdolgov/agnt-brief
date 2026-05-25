// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IEventImplementation.sol";

interface IEconomics {
    // Data structure containing all the different rates for a particular relayer.
    //   100% (1) 1_000_000,
    //   10% (0.1) = 100_000,
    //   1% (0.01) = 10_000,
    //   0.1% (0.001) = 1_000,
    //   0.01% (0.0001) = 100,
    //   0.001% (0,00001) = 10,
    //   0.0001% = (0.000001) = 1
    // All scaled by 1_000_000.
    //
    // USD values (e.g. minFee, maxFee) are scaled by 1_000 (tenth of a cent).
    struct DynamicRates {
        uint24 minFee;
        uint24 maxFee;
        uint24 mintRate;
    }

    struct IntegratorData {
        uint32 index;
        uint32 activeTicketCount;
        bool isBillingEnabled;
        bool isConfigured;
        uint256 availableFuel;
        uint256 reservedFuel;
        uint256 price;
        DynamicRates rates;
        string name;
    }

    struct RelayerData {
        uint32 integratorIndex;
    }

    // The destinations array exists to define the 'splits' of the revenue of the protocol. As a simple example, lets
    // say that the foundation takes 80% and the DAO takes 20%, then the percentages within this array *must* sum to
    // 1 million in any order. The DAO address would have a percentage value of 200k and the foundation 800k.
    //
    // The precision of the percentage variable matches that of the rates above:
    //   100% (1) 1_000_000,
    //   ...
    //   0.0001% = (0.000001) = 1
    struct SpentFuelDestination {
        address payable destination;
        uint24 percentage;
        string label;
    }

    event IntegratorToppedUp(
        uint32 indexed _integratorIndex,
        uint256 indexed _amount,
        uint256 _price,
        uint256 indexed _newAveragePrice
    );
    event FuelReserved(uint32 _integratorIndex, uint32 _ticketCount, uint256 _fuel);
    event BasicTaxCharged(uint32 _integratorIndex, uint32 _actionCount, uint256 _fuel);
    event TicketFuelEmptied(uint32 _integratorIndex, uint32 _ticketCount, uint256 _fuel);
    event SpentFuelCollected(
        SpentFuelDestination _destination,
        uint256 _spentFuel,
        uint256 _amount,
        uint32 _spentFuelTicketCount
    );
    event AccountBalanceCorrected(
        uint32 _integratorIndex,
        uint256 _oldBalance,
        uint256 _newBalance,
        uint256 _difference
    );
    event UpdateBasicTaxRate(uint24 _old, uint24 _new);
    event UpdateFuelToken(address _old, address _new);
    event UpdateSpentFuel(uint256 _old, uint256 _new);
    event UpdateDynamicRates(uint32 _integratorIndex, DynamicRates _dynamicRates);
    event IntegratorConfigured(
        uint32 _integratorIndex,
        string _name,
        address _relayerAddress,
        DynamicRates _dynamicRates
    );
    event IntegratorDisabled(uint32 _integratorIndex);
    event RelayerAdded(address _relayerAddress, uint32 _integratorIndex);
    event RelayerRemoved(address _relayerAddress, uint32 _integratorIndex);
    event EnableIntegratorBilling(uint32 _integratorIndex);
    event DisableIntegratorBilling(uint32 _integratorIndex);
    event UpdateSpentFuelDestinations(SpentFuelDestination[] _old, SpentFuelDestination[] _new);

    function fuelToken() external returns (IERC20);

    function basicTaxRate() external returns (uint24);

    function spentFuelTicketCount() external returns (uint32);

    function spentFuel() external returns (uint256);

    function spentFuelDestinations(uint256 _index)
        external
        returns (
            address payable,
            uint24,
            string memory
        );

    function integratorCount() external returns (uint32);

    function topUpIntegrator(
        uint32 _integratorIndex,
        address _sender,
        uint256 _amount,
        uint256 _price
    ) external returns (uint256);

    function reserveFuel(address _relayerAddress, IEventImplementation.TicketAction[] memory _ticketActions)
        external
        returns (uint256);

    function spendBasicAction(address _relayerAddress, uint32 _actionCount) external returns (uint256);

    function spendTicketReserved(address _relayerAddress, uint32 _ticketCount) external returns (uint256);

    function safeCollectSpentFuel() external;

    function correctAccountBalance(address _relayerAddress, uint256 _newBalance) external;

    function setupIntegrator(
        string calldata _name,
        address _relayerAddress,
        DynamicRates calldata _dynamicRates
    ) external;

    function disableIntegrator(address _relayerAddress) external;

    function addRelayer(address _relayerAddress, uint32 _integratorIndex) external;

    function removeRelayer(address _relayerAddress) external;

    function updateDynamicRates(address _relayerAddress, DynamicRates memory dynamicRates) external;

    function enableIntegratorBilling(address _relayerAddress) external;

    function disableIntegratorBilling(address _relayerAddress) external;

    function setBasicTaxRate(uint24 _basicTaxRate) external;

    function setFuelToken(address _fuelToken) external;

    function setSpentFuel(uint256 _spentFuel) external;

    function setSpentFuelDestinations(SpentFuelDestination[] memory _spentFuelDestinations) external;

    function viewIntegratorAveragePrice(uint32 _integratorIndex) external view returns (uint256);

    function viewIntegratorAvailableFuel(uint32 _integratorIndex) external view returns (uint256);

    function viewIntegratorUSDBalance(uint32 _integratorIndex) external view returns (uint256);
}
