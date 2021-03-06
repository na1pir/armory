package armory.logicnode;

import iron.object.Object;
import iron.math.Vec4;
import armory.trait.physics.RigidBody;

class SetGravityNode extends LogicNode {

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run() {
		var gravity:Vec4 = inputs[1].get();

		if (gravity == null) return;
		
#if arm_physics
        var physics = armory.trait.physics.PhysicsWorld.active;
		physics.setGravity(gravity);
#end

		super.run();
	}
}
