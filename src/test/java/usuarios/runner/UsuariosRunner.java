package usuarios.runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class UsuariosRunner {



    @Test
    void testParallelHappyPath() {
        Results results = Runner.path("classpath:usuarios")
                .tags("@happypath") // Ejecuta solo escenarios con este tag
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
