// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.14;

import "lib/Tick.sol";
import "lib/Position.sol";

contract UniswapV3Pool {
    using Tick for mapping(int24 => Tick.Info);
    using Position for mapping(bytes => Position.Info);
    using Position for Position.Info;

    int24 internal constant MIN_TICK = - 887272;
    int24 internal constant MAX_TICK = - MIN_TICK;

    address public immutable token0;
    address public immutable token1;

    struct Slot0 {
        uint160 sqrtPriceX96;
        int24 tick;
    }

    Slot0 public slot0;
    uint160 public liquidity;

    mapping(int24 => Tick.Info) public ticks;
    mapping(bytes => Position.Info) public positions;

    constructor(
        address token0_,
        address token1_,
        uint160 sqrtPriceX96,
        int24 tick
    ){
        token0 = token0_;
        token1 = token1_;

        slot0 = Slot0({sqrtPriceX96: sqrtPriceX96, tick: tick});
    }




}
